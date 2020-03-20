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
th{
    font-weight: bold;
    }
</style>
</head>
<body>
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
      
      <tr>
    <th>User ID:</th>
    <td>${serviceProvider.userId}</td>
      </tr>
      

 

</table>  
<br><a href="home"><button>Home</button></a>
</body>
</html>

<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="ISO-8859-1"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->
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
<%--     <p>userId: ${serviceProvider.userId}</p> --%>
<%--     <p>password: ${serviceProvider.password}</p> --%>
    
<!-- </body> -->
<!-- </html> -->