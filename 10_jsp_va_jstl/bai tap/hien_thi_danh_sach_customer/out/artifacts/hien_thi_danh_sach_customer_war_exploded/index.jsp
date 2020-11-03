<%@ page import="java.util.List" %>
<%@ page import="model.Customer" %>
<%@ page import="dao.CustomerDao" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/3/2020
  Time: 3:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<html>
  <head>
    <title>$Title$</title>
    <style>
      h3{
        text-align: center;
        color: red;
        background-color: black;
      }
    </style>
  </head>
  <body>
  <%
  List<Customer> customerList = CustomerDao.getAllCustomer();
  request.setAttribute("listCustomer",customerList);
  %>
  <h3>List Customers</h3>
  <table class="table table-striped">
    <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Birth</th>
      <th scope="col">Address</th>
      <th scope="col">image</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${listCustomer}">
    <tr>
      <th scope="row"><c:out value="${customer.name}"/></th>
      <td><c:out value="${customer.birth}"/></td>
      <td><c:out value="${customer.address}"/></td>
      <td>
        <img class=".img-thumbnail" style="width: 100px;height: 100px" src="<c:out value="${customer.image}"/>">
      </td>
    </tr>
    </c:forEach>
    </tbody>
  </table>
  </body>
</html>
