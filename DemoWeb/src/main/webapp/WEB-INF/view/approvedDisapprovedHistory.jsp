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

 

<h1>Approved Disapproved History</h1>

 

<c:choose>
<c:when test="${serviceProviders==null or serviceProviders.size()==0 }">
<p><strong>No lists Available</strong></p>
</c:when>
<c:otherwise>
<table style="width:70%">
<tr>
 
<th>Name of Company</th>
<th>Request Date</th>
<th>Status</th>
<th>Spi</th>
</tr>
<c:forEach var="s" items="${serviceProviders }">
<tr>
<td>${s.nameOfCompany }</td>
<td>${s.requestDate }</td>
<td>${s.status }</td>
<td>${s.spi }</td>
</tr>
</c:forEach>
</table>
</c:otherwise>
</c:choose>

 

</body>
</html>

<%--  <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%--     pageEncoding="ISO-8859-1"%> --%>
<%--   <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="ISO-8859-1"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->

<!-- <h1>Approved Disapproved History</h1> -->

<%-- <c:choose> --%>
<%-- <c:when test="${serviceProviders==null or serviceProviders.size()==0 }"> --%>
<!-- <p><strong>No lists Available</strong></p> -->
<%-- </c:when> --%>
<%-- <c:otherwise> --%>
<!-- <table> -->
<!-- <tr> -->
<!-- <th>ServiceProvider#</th> -->
<!-- <th>Name of Company</th> -->
<!-- <th>Request Date</th> -->
<!-- <th>Status</th> -->
<!-- <th>Spi</th> -->
<!-- </tr> -->
<%-- <c:forEach var="s" items="${serviceProviders }"> --%>
<!-- <tr> -->
<%-- <td>${s.nameOfCompany }</td> --%>
<%-- <td>${s.requestDate }</td> --%>
<%-- <td>${s.status }</td> --%>
<%-- <td>${s.spi }</td> --%>
<!-- </tr> -->
<%-- </c:forEach> --%>
<!-- </table> -->
<%-- </c:otherwise> --%>
<%-- </c:choose> --%>

<!-- </body> -->
<!-- </html> -->