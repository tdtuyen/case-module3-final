<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <jsp:include page="header.jsp"></jsp:include>

    <div class="container">
        <div class="row">
            <div class="col-1"></div>
            <div class="col-10">
                <div class="row">
                    <div class="col-3" style="text-align: center">
                        <h5><strong>Loại phòng</strong></h5>
                    </div>
                    <div class="col-3" style="text-align: center">
                        <h5><strong>Mô tả</strong></h5>
                    </div>
                    <div class="col-2" style="text-align: center">
                        <h5><strong>Giá</strong></h5>
                    </div>
                    <div class="col-3" style="text-align: center">
                        <h5><strong>Đặt phòng</strong></h5>
                    </div>
                </div>

                <c:forEach var="room" items="${rooms}">
                <div style="border-top-style:solid ;border-top-width: 5px; border-top-color: lightslategrey;margin-top: 2px">
                    <h4 style="color: #0081b0">Tên Phòng: ${room.nameRoom}</h4>
                </div>
                <div class="row">

                        <div class="col-3" style=" margin-top: 5px">
                            <img src="${room.imageRoom}"
                                 width="100%" height="100%">
                            </img>

                        </div>
                        <div class="col-9" style=" margin-top: 5px">
                            <div class="row">
                                <div class="col-4">
                                    <span style="padding: 5px">${room.descriptionRoom}</span> <br>

                                </div>
                                <div class="col-3" style="text-align: center" ;>
                                    <h2 style="color: #4caf50">${room.price}</h2>
                                </div>
                                <div class="col-1" ; style="margin: auto">
                                    <button type="button" class="btn btn-danger" onclick='window.location.href="/order?idRoom=${room.idRoom}"'>Book</button>
                                </div>
                            </div>
                        </div>
                </div>
                </c:forEach>
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