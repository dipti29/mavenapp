<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>spmgmt-otherBank</title>
<style>
div.d {
	padding-left: 20px;
}
</style>
</head>
<body>
	<h1>Welcome to IBS Portal</h1>
	<h2>New Registration</h2>
	<form action="registeredDetails1" method="post"
		enctype="multipart/form-data">
		<b>Enter Name of Company:<br>
		</b><input type="text" name="nameOfCompany" required> <br>
		<br> <b>Select Category:</b><br>
		<div class="d">
			<input type="radio" name="category" value="Telecom Services" required>
			Telecom Services <br> <input type="radio" name="category"
				value="Financial Services "> Financial Services <br> <input
				type="radio" name="category" value=" Electricity">
			Electricity <br> <input type="radio" name="category"
				value="Dining Services"> Dining Services <br> <input
				type="radio" name="category" value=" Travel Services">
			Travel Services <br>
			<br>
		</div>

		<b>Enter GSTIn:</b><br> <input type="text" name="gstin"
			pattern="[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z][0-9][A-Z][0-9,A-Z]"
			title="Enter valid GSTIn e.g 35AABCD1429B1ZX" required><br>
		<br> <b>Enter PAN:</b><br> <input type="text"
			name="panNumber" pattern="[A-Z]{5}[0-9]{4}[A-Z]"
			title=" Enter valid PAN number e.g AAAPL1234C" required><br>
				<br> Upload PAN: <input type="file" name="panDoc" /><br>
		<br> <b>Enter Bank Name:</b><br> <input type="text"
			name="bankName" required> <br>
		<br> <b>Enter Account Number:</b><br> <input type="text"
			name="accountNumber" pattern="[1-9][0-9]{9,14}"
			title="Enter valid account number e.g 213546879546" required>
		<br>
		<br> <b>Enter IFSC Code:</b><br> <input type="text"
			name="IFSC" pattern="[A-Z]{4}[0-9]{7}"
			title="Enter valid IFSC code e.g SBIN0000699" required><br>
		<br> <b>Enter Mobile Number:</b><br> <input type="text"
			name="mobileNumber" pattern="[1-9][0-9]{9}"
			title="Enter valid mobile number e.g 9874563215" required> <br>
		<br> <b>Enter Address of Company :</b><br> <input
			type="text" name="companyAddress" required> <br>
		<br> <b> Upload Address Proof:</b> <input type="file" name="addressDoc" /> 
		 <input type="submit"
			value="SUBMIT">
				

	</form>
</body>
</html>

<!-- <!DOCTYPE HTML> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<!-- <title>spmgmt-otherBank</title> -->
<!-- </head> -->
<!-- <body> -->
<!-- 	<h1>Welcome to IBS Portal</h1> -->
<!-- 	<h2> New Registration </h2> -->
<%-- <%-- 	<%!String string = "";%> --%>
<%-- <%-- 	<%! String namePattern = "[A-Z,a-z]{1}[ ,A-Z,a-z,0-9,&,@,#,*,(,),+,-,!]{0,}";%> --%>

<%-- <%-- 	<% do { %> --%>
<!-- <!-- 		 <form action="otherBank" method ="Post"> Enter nameOfCompany: <input type = "text" name="nameOfCompany"> </form> -->

<%-- <%-- 	<% } while (!string.matches(namePattern));%> --%>
<!-- 	 <form action="registeredDetails1"> Enter nameOfCompany: <input type = "text" name="nameOfCompany"> <br> -->
<!-- 	  Select Category: <input type = "radio" name="category"> Telecom Services <br> -->
<!-- 	   <input type = "radio" name="category"> Financial Services <br> -->
<!-- 	   <input type = "radio" name="category"> Electricity <br> -->
<!-- 	   <input type = "radio" name="category"> Dining Services <br> -->
<!-- 	   <input type = "radio" name="category"> Travel Services <br> -->

<!-- 	   Enter GSTIn: <input type = "text" name="gstin" pattern = "[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z][0-9][A-Z][0-9,A-Z]" title="Enter valid GSTIn e.g 35AABCD1429B1ZX" ><br> -->
<!-- 	   Enter PAN: <input type = "text" name="panNumber" pattern = "[A-Z]{5}[0-9]{4}[A-Z]" title=" Enter valid PAN number e.g AAAPL1234C" ><br> -->
<!-- 	   Enter Bank Name: <input type = "text" name="bankName"> <br> -->
<!-- 	   Enter AccountNumber: <input type = "text" name="accountNumber" pattern = "[1-9][0-9]{9,14}" title="Enter valid account number e.g 213546879546"> <br> -->
<!-- 	   Enter IFSC Code: <input type = "text" name="IFSC" pattern = "[A-Z]{4}[0-9]{7}" title="Enter valid IFSC code e.g SBIN0000699"><br> -->
<!-- 	   Enter MobileNumber: <input type ="text" name="mobileNumber" pattern = "[1-9][0-9]{9}" title="Enter valid mobile number e.g 9874563215"> <br> -->
<!-- 	   Enter Address of Company : <input type = "text" name="companyAddress"> <br> -->
<!-- 	   <input type = "submit" value="SUBMIT"> -->

<!-- 	 </form> -->
<!-- </body> -->
<!-- </html> -->