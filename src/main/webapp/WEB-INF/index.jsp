<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>books</title>
</head>
<body>
<h1>All Books</h1>
<table class="table table-hover col-6">
    <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Language</th>
            <th>Number of Pages</th>
        </tr>
    </thead>
    <tbody>
    	<c:forEach var="oneBook" items="${allBooks}">
         <tr>
         	<td>${oneBook.id}</td>
         	<td><a href="/books/${oneBook.id}">${oneBook.title}</a></td>
         	<td>${oneBook.language}</td>
         	<td>${oneBook.numberOfPages}</td>
         </tr>
         </c:forEach>
         
    </tbody>
</table>
</body>
</html>