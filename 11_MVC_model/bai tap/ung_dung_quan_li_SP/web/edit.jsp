<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/5/2020
  Time: 9:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
<form action="/home?action=edit" method="post">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputEmail4">ID</label>
            <input class="form-control" type="text" id="inputEmail4" value="<c:out value="${product.id}"/>" name="id" readonly>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Name</label>
            <input type="text" class="form-control" id="inputPassword4" value="<c:out value="${product.name}"/>" name="name">
        </div>
    </div>
    <div class="form-group">
        <label for="inputAddress">Price</label>
        <input type="text" class="form-control" id="inputAddress" value="<c:out value="${product.price}"/>" name="price">
    </div>
    <div class="form-group">
        <label for="inputAddress2">Status</label>
        <input type="text" class="form-control" id="inputAddress2" value="<c:out value="${product.status}"/>" name="status">
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCity">Producer</label>
            <input type="text" class="form-control" id="inputCity" value="<c:out value="${product.producer}"/>" name="producer">
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Edit</button>
</form>
</body>
</html>
