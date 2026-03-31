<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
</style>
</head>
<body>

<%

HttpSession h1 = request.getSession(false);

int user_id = Integer.parseInt(request.getParameter("user_id"));
String user_name = (String) h1.getAttribute("name");
String email = (String)h1.getAttribute("email");
String password = (String)h1.getAttribute("password");
%>

<h2 style="text-align:center">User Deatils</h2>
<h2 style="text-align:center">Id : <%= user_id %></h2>

<div class="card">
  <img src="/w3images/team2.jpg" alt="profile pic" style="width:100%">
  <h1><%= user_name %></h1>
  <p class="title"><%= email %></p>
  <p><%= password %></p>
  <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div>
  <p><a href="EditUserByUser/<%= user_id %>"><button>Edit Profile</button></a></p>
  <p><a href="index"><button>Home</button></a></p>
  <p><a href="Userlogout"><button>Logout</button></a></p>
</div>

</body>
</html>