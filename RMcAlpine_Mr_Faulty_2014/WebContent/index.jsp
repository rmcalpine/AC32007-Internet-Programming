<!DOCTYPE html>
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

<meta charset="ISO-8859-1">
<title>FaultFinder 2014 Home Page</title>
</head>

<body>

<script>
function redirectToSignUp()
{
window.open('signup.jsp',"_self")
}
</script>

<div> <h1>FaultFinder 2014</h1>
By Rhouri McAlpine
<p>
*Note to Andy*
<p>
This login uses dummy methods to simulate a login.  Please use the following:
<p>
USER = reporter  <br> PASS = password
<p>
Other logins do not work properly.  They are:
<p>
USER = admin <br> PASS = password
<p>
USER = developer <br> PASS = password
<p>


</div>

<p>

<div>

<h1>Please log in:</h1>
<form name="login" method="POST" action="login/">
Username<input type="text" name="username"/>

<p>
Password<input type="password" name="password"/>
<p>
<input type="button" onclick="check(this.form);" value="Login"/>
<input type="reset" value="Cancel"/>
<p>
<p>
<p>
Not registered?
<p>
<input type="button" onclick="redirectToSignUp();" value="Sign Up!"/>
</form>

<script language="javascript">

/* This function checks the entered data */
 
function check(form)

{
	
 /* This checks to see if the entered values match the accepted ones*/
 /* This is simply a dummy-method to ensure everything works */
 /* If the data entered is valid, the user can progress to the next page */
 /* If not an error message will be displayed and the form cleared */
 
 if(form.username.value == "developer" && form.password.value == "password")
 {
   window.open('developer.jsp',"_self")
 }
 
 else if(form.username.value == "reporter" && form.password.value == "password")
 {
   window.open('reporter.jsp',"_self")
 }
 else if(form.username.value == "admin" && form.password.value == "password")
 {
   window.open('admin.jsp',"_self")
 }
 else
 {
   alert("You have entered an incorrect login.  Please try again.") /* Displays an error message*/
   document.forms["login"].reset(); /* Clears form */
 }
}
</script>

</div>



</body>
</html>