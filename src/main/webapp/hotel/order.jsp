<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<!--NoiDung-->
<div class="container">
    <jsp:include page="header.jsp"></jsp:include>
    <div class="container" style="margin-top: 30px">
        <div class="row">
            <div class="col-sm-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="shadow-none p-3 mb-12 col-12 bg-light rounded">
                                    <h5><strong>Tên khách sạn</strong> ${hotel.nameHotel}</h5>
                                    <h5><strong>Tên phòng`</strong> ${room.nameRoom}</h5>
                                    <h5><strong>Giá phòng</strong> ${room.price}</h5>

                                    <span class="glyphicon glyphicon-star" aria-hidden="true"
                                          style="color: yellow"></span>
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"
                                          style="color: yellow"></span>
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"
                                          style="color: yellow"></span>
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"
                                          style="color: yellow"></span>
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"
                                          style="color: yellow"></span>
                                </div>
                                <div style="border-top: dashed; border-top-color: lightslategrey; margin-top: 20px ">
                                    <h4 style="margin-top: 20px"><strong>Thông tin liên hệ</strong></h4>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <form action="order?action=add&idRoom=${room.idRoom}" method="post">
<%--                                                order?idRoom=${room.idRoom}--%>
                                                <label>
                                                    Họ và tên <br>
                                                    <input id="name_customer" name="name_customer" type="text" value="${customer.nameCustomer}">
                                                </label>
                                                <div>Check họ tên</div>
                                                <label>
                                                    Số Điện thoại <br>
                                                    <input id="phone_customer" name="phone_customer" type="phone" value="">
                                                </label>
                                                <div>Check sdt</div>
                                                <label>
                                                    Địa chỉ <br>
                                                    <input id="adress_customer" name="adress_customer" type="text" value="">
                                                </label>
                                                <label>
                                                    Ngày nhận phòng <br>
                                                    <input id="fromdate" name="fromdate" type="datetime-local" value="">
                                                </label>
                                                <label>
                                                    Ngày trả phòng <br>
                                                    <input id="todate" name="todate" type="datetime-local" value="">
                                                </label>
                                                <button  type="submit" class="btn btn-danger">Gửi yêu cầu đặt phòng</button>
                                            </form>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-5">
                <div class="card">
                    <div class="shadow-none p-3 mb-12 col-12 bg-light rounded">
                        <h5 class="card-header">Hóa Đơn</h5>
                        <div class="card-body">
                            <h5 class="card-title"><strong>1 phòng/đêm </strong></h5>
                            <h5>PRICE:${room.price}</h5>
                            <p class="card-text"><strong>Thanh toán</strong></p>
                            <h5>Tổng Tiền: <c:out value="${room.price}* (${order.dateTo} - "> </c:out>></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
</body>
</html>
