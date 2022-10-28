<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Department Details</title>
</head>
<style>
body
{

}
.btn1 {
  width: 430px;
  height: 630px;
  line-height: 42px;
  padding: 0;
  border: none;
  background: rgb(255,27,0);
  background: linear-gradient(0deg, rgba(255,27,0,1) 0%, rgba(251,75,2,1) 100%);
}
.btn1:hover {
  color: red;
  font-size:30px;
  background: url('https://c0.wallpaperflare.com/preview/81/93/70/the-john-rylands-library-john-rylands-library-manchester-manchester-university.jpg');
  box-shadow:none;
}
.btn1:before,
.btn1:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #f0094a;
  box-shadow:
   -1px -1px 5px 0px #fff,
   7px 7px 20px 0px #0003,
   4px 4px 5px 0px #0002;
  transition:400ms ease all;
}
.btn1:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
.btn1:hover:before,
.btn1:hover:after{
  width:100%;
  transition:800ms ease all;
}

.btn2 {
  background: rgb(0,172,238);
  background: linear-gradient(0deg, rgba(0,172,238,1) 0%, rgba(2,126,251,1) 100%);
  width: 430px;
  height: 630px;
  line-height: 42px;
  padding: 0;
  border: none;
  
}
.btn2 span {
  position: relative;
  display: block;
  width: 100%;
  height: 100%;
}
.btn2:before,
.btn2:after {
  position: absolute;
  content: "";
  right: 0;
  top: 0;
   background: rgba(2,126,251,1);
  transition: all 0.3s ease;
}
.btn2:before {
  height: 0%;
  width: 2px;
}
.btn2:after {
  width: 0%;
  height: 2px;
}
.btn2:hover{
   background: transparent;
   color: skyblue;
  font-size:30px;
   background: url('https://c1.wallpaperflare.com/preview/160/500/36/various-college-education-learning.jpg');
  box-shadow: none;
}
.btn2:hover:before {
  height: 100%;
}
.btn2:hover:after {
  width: 100%;
}
.btn2 span:hover{
   color: rgba(2,126,251,1);
}
.btn2 span:before,
.btn2 span:after {
  position: absolute;
  content: "";
  left: 0;
  bottom: 0;
   background: rgba(2,126,251,1);
  transition: all 0.3s ease;
}
.btn2 span:before {
  width: 2px;
  height: 0%;
}
.btn2 span:after {
  width: 0%;
  height: 2px;
}
.btn2 span:hover:before {
  height: 100%;
}
.btn2 span:hover:after {
  width: 100%;
}

.btn3 {
  background-color: #f0ecfc;
background-image: linear-gradient(315deg, #f0ecfc 0%, #c797eb 74%);
  width: 430px;
  height: 630px;
  line-height: 42px;
  padding: 0;
  border: none;
}
.btn3 span {
  position: relative;
  display: block;
  width: 100%;
  height: 100%;
}
.btn3:before,
.btn3:after {
  position: absolute;
  content: "";
  right: 0;
  bottom: 0;
  background: #c797eb;
  /*box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),
              -4px -4px 6px 0 rgba(116, 125, 136, .2), 
    inset -4px -4px 6px 0 rgba(255,255,255,.5),
    inset 4px 4px 6px 0 rgba(116, 125, 136, .3);*/
  transition: all 0.3s ease;
}
.btn3:before{
   height: 0%;
   width: 2px;
}
.btn3:after {
  width: 0%;
  height: 2px;
}
.btn3:hover:before {
  height: 100%;
}
.btn3:hover:after {
  width: 100%;
}
.btn3:hover{
  background: transparent;
  color: purple;
  font-size:30px;
  background: url('https://c0.wallpaperflare.com/preview/209/141/124/library-shelf-near-black-wooden-ladder.jpg');
}
.btn3 span:hover{
  color: #c797eb;
}
.btn3 span:before,
.btn3 span:after {
  position: absolute;
  content: "";
  left: 0;
  top: 0;
  background: #c797eb;
  /*box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),
              -4px -4px 6px 0 rgba(116, 125, 136, .2), 
    inset -4px -4px 6px 0 rgba(255,255,255,.5),
    inset 4px 4px 6px 0 rgba(116, 125, 136, .3);*/
  transition: all 0.3s ease;
}
.btn3 span:before {
  width: 2px;
  height: 0%;
}
.btn3 span:after {
  height: 2px;
  width: 0%;
}
.btn3 span:hover:before {
  height: 100%;
}
.btn3 span:hover:after {
  width: 100%;
}
  
</style>
<body>
<div class="container">
<form name="secondform" action="createdept.jsp" method="post" style="text-align: center;">
<button class="btn1" type="submit" name="dept">Create a new Department</button>
<button class="btn2" type="submit" name="viewdept"  formaction="viewdept.jsp">View Departments</button>
<button class="btn3" type="submit" name="searchdept"  formaction="searchid.html">Search for a Department</button>
</form>
</div>
</body>
</html>