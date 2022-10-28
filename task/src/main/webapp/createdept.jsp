<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create a new Department</title>
</head>
<style>

body {
  font-family: "Helvetica";
  align-items: center;
  justify-content: center;
  background-image: url(https://thumbs.dreamstime.com/b/blurry-background-library-college-sun-light-abstract-self-education-learning-concept-149836962.jpg);
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
<form action="deptsample" method="post" style="text-align: center; ">
<p style="text-align:center;"><b>Please fill the new department details below</b></p>

<input type="text" class="deptid" placeholder="Department ID" name ="iddept"><br><br>

<input type="text" class="deptname" placeholder="Department Name" name = "namedept"><br><br>

<input type="text" class="depthod" placeholder="Department HOD Name" name ="namehod"><br><br>

<input type="text" class="deptblock" placeholder="Department Block" name ="blockdept"><br><br>

<input type="submit" class="submit" value="Submit"><br> or<br>
<input type="submit" class="submit" value="View" formaction="viewdept.jsp"><br><br>
<hr>
    <input type="text" name="deptid" class="iddept" placeholder="Enter Department ID">
    <input type="submit" class="submit" value="Search" formaction="searchdept.jsp">
</form>
</div>
</body>
</html>