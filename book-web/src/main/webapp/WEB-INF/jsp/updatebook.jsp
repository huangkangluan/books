<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/28
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>编辑科目</title>
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
<table class="table table-bordered" align="center" style="width:40%;margin: 0px auto">
  <tr class="info">
    <td align="center">
      <h2>编辑图书信息</h2>
    </td>
  </tr>
  <tr>
    <td>
      <div class="form-group">
        <div class="input-group">
          <div class="input-group-addon">类别：</div>
          <input type="hidden" value="${book.bookId}" id="bookId" name="bookId">
          <input class="form-control" type="text" placeholder="类别" id="bookSort" name="bookSort" value="${book.bookSort}" onblur="bookSort()">
        </div>
      </div>
    </td>
  </tr>
  <tr>
    <td>
      <div class="form-group">
        <div class="input-group">
          <div class="input-group-addon">名称：</div>
          <input class="form-control" type="text" placeholder="名称" id="bookName" name="bookName" value="${book.bookName}" onblur="bookName()">
        </div>
      </div>
    </td>
  </tr>
  <tr>
  <td>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon">作者：</div>
        <input class="form-control" type="text" placeholder="作者" id="bookAuthor" name="bookAuthor" value="${book.bookAuthor}" onblur="bookAuthor()">
      </div>
    </div>
  </td>
</tr>
  <tr>
    <td>
      <div class="form-group">
        <div class="input-group">
          <div class="input-group-addon">价格：</div>
          <input class="form-control" type="text" placeholder="价格" id="bookPrice" name="bookPrice" value="${book.bookPrice}" onblur="bookPrice()">
        </div>
      </div>
    </td>
  </tr>
  <tr>
    <td>
      <div class="form-group">
        <div class="input-group">
          <div class="input-group-addon">出版社：</div>
          <input class="form-control" type="text" placeholder="出版社" id="bookPublish" name="bookPublish" value="${book.bookPublish}" onblur="bookPublish()">
        </div>
      </div>
    </td>
  </tr>
  <tr>
    <td>
      <div class="form-group">
        <div class="input-group">
          <div class="input-group-addon">数量：</div>
          <input class="form-control" type="text" placeholder="数量" id="bookNumber" name="bookNumber" value="${book.bookNumber}" onblur="bookNumber()">
        </div>
      </div>
    </td>
  </tr>
  <tr>
    <td align="right">
      <button type="button" class="btn btn-primary" id="butsub">修改图书信息</button>
      <a href="findbooks" type="button" class="btn btn-primary" id="shouye">返回首页</a>
    </td>
  </tr>
</table>
</body>
<script>
  $(function(){
    $("#butsub").click(function(){
      if(checkedAll()==true) {
        $.post("doupdatebook", {
          "bookId": $("#bookId").val(),
          "bookSort": $("#bookSort").val(),
          "bookName": $("#bookName").val(),
          "bookAuthor": $("#bookAuthor").val(),
          "bookPrice": $("#bookPrice").val(),
          "bookPublish": $("#bookPublish").val(),
          "bookNumber": $("#bookNumber").val()
        }, function (data) {
          if (data == 1) {
            alert("修改成功");
          } else {
            alert("修改失败");
          }
        });
        return true;
      }else{
        return false;
      }
    });

  });
  function bookSort(){
    var bookSort=$("#bookSort").val();
    if(bookSort==""){
      alert("类别不能为空！");
      return false;
    }
    return true;
  }
  function bookName(){
    var bookName=$("#bookName").val();
    if(bookName==""){
      alert("名称不能为空！");
      return false;
    }
    return true;
  }
  function bookAuthor(){
    var bookAuthor=$("#bookAuthor").val();
    if(bookAuthor==""){
      alert("作者不能为空！");
      return false;
    }
    return true;
  }
  function bookPrice(){
    var bookPrice=$("#bookPrice").val();
    if(bookPrice==""){
      alert("价格不能为空！");
      return false;
    }
    return true;
  }
  function bookPublish(){
    var bookPublish=$("#bookPublish").val();
    if(bookPublish==""){
      alert("出版社不能为空！");
      return false;
    }
    return true;
  }
  function bookNumber(){
    var bookNumber=$("#bookNumber").val();
    if(bookNumber==""){
      alert("数量不能为空！");
      return false;
    }
    return true;
  }
  function checkedAll() {
    return bookSort()&& bookName() && bookAuthor() && bookPrice() && bookPublish()&& bookNumber() ;
  }
</script>
</html>
