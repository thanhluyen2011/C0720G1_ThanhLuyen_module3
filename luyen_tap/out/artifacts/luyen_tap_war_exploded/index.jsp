<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/9/2020
  Time: 3:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Customer List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  </head>
  <body>
  <h1 style="color: red;background-color: cornflowerblue;text-align: center">Customer List</h1>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a href="/home">Home</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link"  data-toggle="modal" data-target="#modelCreate">Create Customer <span class="sr-only">(current)</span></a>
            </li>
          </ul>
      <form class="form-inline my-2 my-lg-0" method="get" action="/home">
        <input type="hidden" name="action" value="search">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="searchData">
        <button class="btn btn-outline-success my-2 my-sm-0"  type="submit">Search</button>
      </form>
    </div>
  </nav>
  <table class="table table-dark">
    <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">SĐT</th>
      <th scope="col">Actios</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach items="${getAll}" var="customer">
    <tr>
      <td scope="row" aria-readonly="true">${customer.getId()}</td>
      <td>${customer.getName()}</td>
      <td>${customer.getEmail()}</td>
      <td>${customer.getSdt()}</td>
      <td><button onclick="getData(${customer.getId()},'${customer.getName()}','${customer.getEmail()}','${customer.getSdt()}')" data-toggle="modal" data-target="#modelEdit">Edit</button>
        <button onclick="getDelete(${customer.getId()})" data-toggle="modal" data-target="#modelDelete">Delete</button>
      </td>
    </tr>
    </c:forEach>
    </tbody>
  </table>
  <div class="modal fade" id="modelEdit" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Modal title</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form method="get" action="/home">
        <div class="modal-body">
          <input type="hidden" name="action" value="edit">
            <label>ID</label>
            <input type="text" class="form-control" name="id" id="modelId" value=""  readonly>
            <label>Name</label>
            <input type="text" class="form-control" name="name" id="modelName" value="">
            <label>Email</label>
            <input type="text" class="form-control" name="email" id="modelEmail" value="">
            <label>SDT</label>
            <input type="text" class="form-control" name="sdt" id="modelSdt" value="">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Save</button>
        </div>
          </form>
      </div>
    </div>
  </div>

  <div class="modal fade" id="modelDelete" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Modal title</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form method="get" action="/home">
          <h3 style="color: red">Are you sure you want to delete ?</h3>
          <div >
            <input type="hidden" name="action" value="delete">
            <input type="hidden" name="id" id="deleteId">
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
            <button type="submit" class="btn btn-primary">Ok</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  </body>





  <div class="modal fade" id="modelCreate" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Modal title</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form method="get" action="/home">
          <div class="modal-body">
            <input type="hidden" name="action" value="add">
            <label>Name</label>
            <input type="text" class="form-control" name="name" value="">
            <label>Email</label>
            <input type="text" class="form-control" name="email"  value="">
            <label>SDT</label>
            <input type="text" class="form-control" name="sdt" value="">
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
            <button type="submit" class="btn btn-primary">Ok</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  </body>

<script>
  function getDelete(id) {
    $("#deleteId").val(id);
    // console.log(id)
    // document.getElementById("deleteId").value = id;
  }
  function getData(id,name,email,sdt){
    $("#modelId").val(id);
    $("#modelName").val(name);
    $("#modelEmail").val(email);
    $("#modelSdt").val(sdt);
  }
</script>


</html>