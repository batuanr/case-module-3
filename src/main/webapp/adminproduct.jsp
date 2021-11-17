<%--
  Created by IntelliJ IDEA.
  User: HI
  Date: 11/17/2021
  Time: 3:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        .sidenav {
            height: 100%;
            width: 200px;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #111;
            overflow-x: hidden;
        }


        .sidenav a {
            color: white;
            padding: 16px;
            text-decoration: none;
            display: block;
        }

        .sidenav a:hover {
            background-color: #ddd;
            color: black;
        }

        .content {
            margin-left: 200px;
            padding-left: 20px;
        }
    </style>
</head>
<body>
<div class="sidenav">
    <a href="#">Danh sách sản phầm</a>
    <a href="#">Thêm sản phẩm</a>
    <a href="#">Danh sách đơn hàng</a>

</div>

<div class="content">
    <div style="text-align: center">
        <h2>Danh sách sản phẩm</h2>
    </div>
    <div>
        <div align="center">
            <table border="1px">
                <tr>
                    <th>id</th>
                    <th>name</th>
                    <th>price</th>
                    <th>chi tiết</th>
                </tr>
                <c:forEach var="product" items="${listproduct}">
                    <tr>
                        <td>
                            <c:out value="${product.id}"/>
                        </td>
                        <td>
                            <c:out value="${product.name}"/>
                        </td>
                        <td>
                            <c:out value="${product.price}"/>
                        </td>
                        <td>
                            <a href="#">check</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
