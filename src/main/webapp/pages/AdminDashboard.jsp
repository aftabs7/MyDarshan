<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Button Page</title>
<style>
  body {
  	background-image: linear-gradient(119deg, #4158D0 0%, #C850C0 46%, #FFCC70 100%);
  	}
  	
  .container {
    text-align: center;
    margin-top: 50px;
  }
  .button {
      margin: 40px 40px;
  }
  .button,a {
    display: inline-block;
    padding: 20px 35px;
    font-size: 16px;
    cursor: pointer;
    text-align: center;
    text-decoration: none;
    outline: none;
    color: #fff;
    background-color: #007bff;
    border: none;
    border-radius: 15px;
    box-shadow: 0 4px #0069d9;
  }
  .button:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>
  <div class="container">
    <button class="button"><a href="Home">Home Page</a></button> 
    <button class="button"><a href="ViewUsers">View Users</a></button> <br>
    <button class="button"><a href="Add_Destination">Add Destination</a></button>
    <button class="button"><a href="ViewDestinations">View Destinations</a></button>
    <button class="button"><a href="Adminlogout">Logout</a></button>

  </div>
</body>
</html>