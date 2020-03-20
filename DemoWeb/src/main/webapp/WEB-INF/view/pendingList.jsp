<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 5px;
  text-align: left;
}
</style>
</head>
<body>
<h1>Pending List</h1>
 
<form action="updateStatus">
<c:choose>
<c:when test="${serviceProviders==null or serviceProviders.size()==0 }">
<p><strong>No Pending Lists Available</strong></p>
</c:when>
<c:otherwise>
<p> Select a Service Provider to update status </p>
<table style="width:70%">
<tr>
<th>Select</th>
<th>Name of company</th>
<th>Request Date</th>
<th>Status</th>
</tr>

 

<c:forEach var="s" items="${serviceProviders}">
<tr>
<td><input type = "radio" name = "userId"value="${s.userId}"></td> 
<td>${s.nameOfCompany}</td>
<td>${s.requestDate }</td>
<td>${s.status }</td>
</tr>
</c:forEach>
</table><br>
</c:otherwise>
</c:choose>
<input type="SUBMIT" value="SUBMIT" /> 
</form>
<br><a href="home"><button>Home</button></a>
</body>
</html>

<%--   <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%--     pageEncoding="ISO-8859-1"%> --%>
<%--   <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="ISO-8859-1"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->
<!-- <h1>Pending List</h1> -->
 
<!-- <form action="updateStatus"> -->
<%-- <c:choose> --%>
<%-- <c:when test="${serviceProviders==null or serviceProviders.size()==0 }"> --%>
<!-- <p><strong>No Pending Lists Available</strong></p> -->
<%-- </c:when> --%>
<%-- <c:otherwise> --%>
<!-- <p> Select a Service Provider to update status </p> -->
<!-- <table> -->
<!-- <tr> -->
<!-- <th>Name of company</th> -->
<!-- <th>Request Date</th> -->
<!-- <th>Status</th> -->
<!-- </tr> -->

<%-- <c:forEach var="s" items="${serviceProviders}"> --%>
<!-- <tr> -->
<%-- <td><input type = "radio" name = "userId"value="${s.userId}"></td>  --%>
<%-- <td>${s.nameOfCompany}</td> --%>
<%-- <td>${s.requestDate }</td> --%>
<%-- <td>${s.status }</td> --%>
<!-- </tr> -->
<%-- </c:forEach> --%>
<!-- </table> -->
<%-- </c:otherwise> --%>
<%-- </c:choose> --%>
<!-- <input type="SUBMIT" value="SUBMIT" />  -->
<!-- </form> -->
<!-- </body> -->
<!-- </html> -->