<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

 

div.x{
padding-top: 6px;
}

 

table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 5px;
  text-align: left;
}
th{
    font-weight: bold;
    }
</style>    
</head>
<body>
<form action="updateMessage">
<h2>Registered Details</h2>
<table style="width:70%">
    <tr>
    <th>Name of Company:</th>
    <td>${serviceProvider.nameOfCompany}</td>
      </tr>
      
      <tr>
    <th>Account Number:</th>
    <td>${serviceProvider.accountNumber}</td>
      </tr>
      
      <tr>
    <th>Name of Bank:</th>
    <td>${serviceProvider.bankName}</td>
      </tr>
      
      <tr>
    <th>Category:</th>
    <td>${serviceProvider.category}</td>
      </tr>
      
      <tr>
    <th>Company Address:</th>
    <td>${serviceProvider.companyAddress}</td>
      </tr>
      
      <tr>
    <th>GSTIN:</th>
    <td>${serviceProvider.gstin}</td>
      </tr>
      
      <tr>
    <th>IFSC:</th>
    <td>${serviceProvider.IFSC}</td>
      </tr>
      
      <tr>
    <th>Mobile Number:</th>
    <td>${serviceProvider.mobileNumber}</td>
      </tr>
      
      <tr>
    <th>PAN:</th>
    <td>${serviceProvider.panNumber}</td>
      </tr>
      
      <tr>
    <th>Status:</th>
    <td>${serviceProvider.status}</td>
      </tr>
      
 </table><br>
    <input type="hidden" name="uid" value="${serviceProvider.userId}">
     <b><font size="5">Provide Remarks :</font></b><br> <input type = "text" required name="remarks"><br><br>
    <b><font size="5">Update Status:</font></b> <br>

    <div class="x">
    <input type="submit"  name = "decision" value="Pending" > <span>|</span>
    <input type="submit"  name = "decision" value="Approved" > <span>|</span>
    <input type="submit"  name = "decision" value="Disapproved" ><br><br>
      </div>
    
 
      </form>
   
</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%--     pageEncoding="ISO-8859-1"%> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="ISO-8859-1"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->
<!-- <form action="updateMessage"> -->
<!-- <h2>Registered Details</h2> -->

<%--     <p>nameOfCompany: ${serviceProvider.nameOfCompany}</p> --%>
<%--     <p>accountNumber: ${serviceProvider.accountNumber}</p> --%>
<%--     <p>nameOfBank: ${serviceProvider.bankName}</p> --%>
<%--     <p>category: ${serviceProvider.category}</p> --%>
<%--     <p>companyAddress: ${serviceProvider.companyAddress}</p> --%>
<%--     <p>gstin: ${serviceProvider.gstin}</p> --%>
<%--     <p>IFSC: ${serviceProvider.IFSC}</p> --%>
<%--     <p>mobileNumber: ${serviceProvider.mobileNumber}</p> --%>
<%--     <p>panNumber: ${serviceProvider.panNumber}</p> --%>
<%--     <p>status: ${serviceProvider.status}</p> --%>
<%--     <input type="hidden" name="uid" value="${serviceProvider.userId}"> --%>
<!--     Update Status: <br> <input type="radio" name = "decision" value="Pending"> Keep Pending <br> -->
<!--       <input type="radio" name = "decision" value="approved">Approve Service Provider <br> -->
<!--         <input type="radio" name = "decision" value="disapproved">Disapprove Service Provider <br> -->
        
<!--       Provide Remarks : <input type = "text" name="remarks"><br> -->
<!--       <input type = "submit" value ="SUBMIT">  -->
<!--       </form> -->
<!-- </body> -->
<!-- </html> -->