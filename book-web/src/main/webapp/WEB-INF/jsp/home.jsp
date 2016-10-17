<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/27
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
  <!-- 新 Bootstrap 核心 CSS 文件 -->
  <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

  <!-- 可选的Bootstrap主题文件（一般不用引入） -->
  <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">

  <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
  <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

  <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
  <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<table class="table table-hover table-bordered" style="margin: 0px auto;width: 60%;text-align: center">
  <tr class="info">
    <td>图书编号</td>
    <td>类别</td>
    <td>名称</td>
    <td>作者</td>
    <td>价格</td>
    <td>出版社</td>
    <td>数量</td>
    <td>编辑</td>
  </tr>
  <c:forEach items="${list}" var="b">
  <tr align="center">
    <td><input type="checkbox" value="${b.bookId}" name="checkbox" class="checkbox"></td>
    <td>${b.bookSort}</td>
    <td>${b.bookName}</td>
    <td>${b.bookAuthor}</td>
    <td>${b.bookPrice}</td>
    <td>${b.bookPublish}</td>
    <td>${b.bookNumber}</td>
    <td><a href="toupdateBook?bookId=${b.bookId}" type="button" class="btn btn-primary">编辑</a></td>
  </tr>
  </c:forEach>
</table>
</body>
</html>
