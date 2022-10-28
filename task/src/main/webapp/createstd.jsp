<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

body {
  font-family: "Helvetica";
  align-items: center;
  justify-content: center;
  background-image: url(https://wallpaperaccess.com/full/6592911.jpg);
  background-size: cover;
  background-repeat:no-repeat;
 }
  .container {  
  margin: auto;
  margin-top:10px;
  max-width: 400px;
  width: 90%;
  padding: 20px;  
  box-shadow: 0px 0px 20px #00000020;  
  border-radius: 8px;  
  background-color: white;  
 }
  input.submit {  
   width: 50%;  
   background:  #000066; 
   border: none;  
   border-radius: 8px;
   padding: 10px 0 10px 0;  
   font-family: Helvetica;  
   color: white;  
   outline: none;  
   font-size: 16px;  
   letter-spacing: 2px;
   transition-duration: 0.4s;
   cursor:pointer;
 } 
 .submit:hover {
   background-color: white;
  color: black;
  border: 2px solid  #000066;
  }
  input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 3px solid #ccc;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  outline: none;
}

input[type=text]:focus {
  border: 3px solid #555;

</style>
<body>
<div class="container">
<form action="stdsample" method="post" style="text-align: center; ">

<p style="text-align:center;"><b>Please fill the student details below</b></p>

<input type="text" class="stdno" placeholder="Student Number" name ="stdno"><br><br>

<input type="text" class="stdname" placeholder="Student Name" name = "stdname"><br><br>

<input type="text" class="stddept" placeholder="Student's Department" name ="stddept"><br><br>

<input type="text" class="stdaddress" placeholder="Student Address" name ="stdaddress"><br><br>

<input type="text" class="school" placeholder="School Name" name ="school"><br><br>

<input type="submit" class="submit" value="Submit"><br> or<br>
<input type="submit" class="submit" value="View" formaction="viewstd.jsp"><br><br>
<hr>
 <input type="text" name="stdnosearch" class="stdnosearch" placeholder="Enter Student Number">
 <input type="submit" value="Search" class="submit" formaction="searchstdno.jsp">
</form>
</div>
</body>
</html>