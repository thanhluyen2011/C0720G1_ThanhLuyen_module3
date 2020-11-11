<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/11/2020
  Time: 3:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="/student">
<div class="modal-body">
    <input type="hidden" name="action" value="add" >
    <label>Name</label>
    <input type="text" class="form-control" name="name" value="">
    <label>gender</label>
    <input type="text" class="form-control" name="gender" value="">
    <label>phone</label>
    <input type="text" class="form-control" name="phone" value="">

    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
    <button type="submit" class="btn btn-primary">Save</button>
</div>
</form>

</body>
</html>
