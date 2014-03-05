<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
body
{
background: #f06;
background: linear-gradient(45deg, #f06, #000000");
min-height: 100%;
}
h1
{
color:#000000;
text-align:center;
}
p
{
font-family:"Times New Roman";
font-size:20px;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fault Finder</title>
</head>
<body>

The time is now <%= new java.util.Date() %> <p>
<p>
You are running the following Operating System: <p>
<p>

<% out.println("OS: " + System.getProperty("os.name")); %>

</body>
</html>