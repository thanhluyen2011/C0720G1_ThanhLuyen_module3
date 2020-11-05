<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/5/2020
  Time: 8:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  </head>
  <body>
  <h3 style="text-align: center;background-color: red">List Product</h3>
  <p>
    <a style="text-align: center" href="/home?action=create">Create new Product</a>
  </p>
  <form action="/home?action=search" method="post">
    <input type="text" name="search"> <input type="submit">
  </form>
  <table class="table table-striped">
    <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Price</th>
      <th scope="col">Status</th>
      <th scope="col">Producer</th>
      <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${productList}">
    <tr>
      <th scope="row"><c:out value="${product.id}"/></th>
      <td><c:out value="${product.name}"/></td>
      <td><c:out value="${product.price}"/></td>
      <td><c:out value="${product.status}"/></td>
      <td><c:out value="${product.producer}"/></td>
      <td>
        <a href="/home?action=edit&id=${product.id}" class="btn btn-warning">Edit</a>
        <a href="/home?action=delete&id=${product.id}" class="btn btn-danger">Delete</a>
      </td>
    </tr>
    </c:forEach>
    </tbody>
  </table>
  </body>
</html>
