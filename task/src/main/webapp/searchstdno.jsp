<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String url = "jdbc:mysql://localhost:3306/task";
String userid = "root";
String password = "welcome123";
String std_no = request.getParameter("stdnosearch");
try {
Class.forName("com.mysql.cj.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection con = null;
Statement st = null;
ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Search</title>
</head>
<style>
body {
  font-family: Arial, sans-serif;
  background: url(https://www.backgroundcheckcentral.com/wp-content/uploads/2022/04/College-Background-Check.jpg);
  background-repeat:no-repeat;
  background-size: cover;
}
h1
{
	font-size: 30px;
	color:red;
	line-height: 24px;
	margin: 30px auto;
	text-align: center;
	width: 800px;
}
table {
	background: #f5f5f5;
	border-collapse: separate;
	box-shadow: inset 0 1px 0 #fff;
	font-size: 20px;
	line-height: 24px;
	margin: 30px auto;
	text-align: center;
	width: 800px;
}	
th {
	background: url(https://jackrugile.com/images/misc/noise-diagonal.png), linear-gradient(#777, #444);
	border-left: 1px solid #555;
	border-right: 1px solid #777;
	border-top: 1px solid #555;
	border-bottom: 1px solid #333;
	box-shadow: inset 0 1px 0 #999;
	color: #fff;
  font-weight: bold;
	padding: 10px 15px;
	position: relative;
	text-shadow: 0 1px 0 #000;	
}

th:after {
	background: linear-gradient(rgba(255,255,255,0), rgba(255,255,255,.08));
	content: '';
	display: block;
	height: 25%;
	left: 0;
	margin: 1px 0 0 0;
	position: absolute;
	top: 25%;
	width: 100%;
}

th:first-child {
	border-left: 1px solid #777;	
	box-shadow: inset 1px 1px 0 #999;
}

th:last-child {
	box-shadow: inset -1px 1px 0 #999;
}
td {
	border-right: 1px solid #fff;
	border-left: 1px solid #e8e8e8;
	border-top: 1px solid #fff;
	border-bottom: 1px solid #e8e8e8;
	padding: 10px 15px;
	position: relative;
	transition: all 300ms;
}

td:first-child {
	box-shadow: inset 1px 0 0 #fff;
}	

td:last-child {
	border-right: 1px solid #e8e8e8;
	box-shadow: inset -1px 0 0 #fff;
}	

tr {
	background: url(https://jackrugile.com/images/misc/noise-diagonal.png);	
}

tr:nth-child(odd) td {
	background: #f1f1f1 url(https://jackrugile.com/images/misc/noise-diagonal.png);	
}

tr:last-of-type td {
	box-shadow: inset 0 -1px 0 #fff; 
}

tr:last-of-type td:first-child {
	box-shadow: inset 1px -1px 0 #fff;
}	

tr:last-of-type td:last-child {
	box-shadow: inset -1px -1px 0 #fff;
}	
</style>
<body>
<h1>Student Detail</h1>
<table border="1">
<tr>
<th>Student Number</th>
<th>Student Name</th>
<th>Department Name</th>
<th>Address</th>
<th>School Name</th>
<th>Department ID</th>
<th>Department HOD</th>
<th>Block Number</th>
</tr>
<% 
try{
con = DriverManager.getConnection(url, userid, password);
st=con.createStatement();
String sql ="select * from dept right join std on dept.deptname=std.deptname where stdno='"+std_no+"'";
rs = st.executeQuery(sql);
while(rs.next()){
%>
<tr>
<td><%=rs.getString("stdno") %></td>
<td><%=rs.getString("stdname") %></td>
<td><%=rs.getString("deptname") %></td>
<td><%=rs.getString("address") %></td>
<td><%=rs.getString("school") %></td>
<td><%=rs.getString("deptid") %></td>
<td><%=rs.getString("hodname") %></td>
<td><%=rs.getString("blockno") %></td>
</tr>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 
</body>
</html>