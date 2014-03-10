<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>

body {
  font-family: 'Lucida Grande', 'Helvetica Neue', Helvetica, Arial, sans-serif;
  padding: 100px;
  font-size: 13px;
  background: #3C3C3C;
  /* background-image:url("http://p1.pichost.me/i/39/1624276.jpg"); */
}

button{

background: #E1811D;
width: 410px;
margin: 0 auto;
text-align: center;
position: absolute; 
left: 175px; 
top: 10px;
 /* border-radius */
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
  /* box-shadow */
  -webkit-box-shadow: rgba(0,0,0,0.2) 0px 1px 3px;
  -moz-box-shadow: rgba(0,0,0,0.2) 0px 1px 3px;
  box-shadow: rgba(0,0,0,0.2) 0px 1px 3px;

}

div {
  background: #8CC63E;
  margin: 0 auto;
  width: 200px;
  padding: 100px;
  text-align: center;
  /* border-radius */
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
  /* box-shadow */
  -webkit-box-shadow: rgba(0,0,0,0.2) 0px 1px 3px;
  -moz-box-shadow: rgba(0,0,0,0.2) 0px 1px 3px;
  box-shadow: rgba(0,0,0,0.2) 0px 1px 3px;
}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FaultFinder 2014 Report-A-Fault</title>
</head>
<body>

<div> <h1>FaultFinder 2014</h1>
<p>
Report-A-Fault

<p>
Have you got a problem with your system?  Please let us know using the form below:
<p>
<%
 out.println("Your Operating System is " + System.getProperty("os.name"));
 out.println("running version " + System.getProperty("os.version"));
%>
</div>

<p>

<div>




<script language="javascript" type="text/javascript">
function generateID() {
	var chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz";
	var string_length = 8;
	var randomstring = '';
	for (var i=0; i<string_length; i++) {
		var rnum = Math.floor(Math.random() * chars.length);
		randomstring += chars.substring(rnum,rnum+1);
	}
	document.faultLog.randomfield.value = randomstring;
}
</script>


<form action="/RMcAlpine_Mr_Faulty_2014/fault" method="POST"  name="faultLog">
<input type="button" value="Generate my Fault ID" onClick="generateID(); this.disabled=true;">
<p>
<input type="text" name="randomfield" value="">
<p>
Short Description<input type="text" name="shortDes"/>
<p>
Long Description<input type="text" name="longDes"/>
<p>
What is the severity of your problem?:
<p>
<input type="radio" name="severity" value="4">Severe Fault
<p>
<input type="radio" name="severity" value="3">Major Fault
<p>
<input type="radio" name="severity" value="2">Minor Fault
<p>
<input type="radio" name="severity" value="1" checked>Slight Fault
<p>
<input type="submit"  value="Submit"/>
<input type="reset" value="Cancel"/>
</form>


</div>


<script>
function submitForm()
{

	<%
    //String faultID = request.getParameter("randomfield");
    //String shortDescription = request.getParameter("shortDes");
    //String longDescription = request.getParameter("longDes");
    //String severity = request.getParameter("flt");
    //String reportedBy = request.getParameter("email");
    	
    %>
	
    alert("Thank you for reporting the fault!  We'll get right on it!  You'll now be logged out and thrown back to the main menu.  Thanks! ")  /* Displays an error message*/
	window.open('index.jsp',"_self")
	
}</script>


<script>
function redirect()
{
window.open('index.jsp',"_self")
}
</script>

<button onclick="redirect()">LogOut</button>

</body>
</html>