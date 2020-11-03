<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/2/2020
  Time: 5:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title> Calculate Discount</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Currency Converter</h2>
<form method="post" action="/display-discount">
  <label>Product Description: </label><br/>
  <input type="text" name="describe" placeholder="DESCRIBE"/><br/>
  <label>List Price: </label><br/>
  <input type="text" name="price" placeholder="PRICE" /><br/>
  <label>Discount Percent: </label><br/>
  <input type="text" name="ratio" placeholder="RATIO"/><br/><br>
  <input type = "submit" id = "submit" value = "Calculate Discount"/>
</form>
</body>
</html>
