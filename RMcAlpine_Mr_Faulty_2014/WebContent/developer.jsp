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
left: 50%; 
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
<title>FaultFinder 2014 Fix-A-Fault</title>
</head>
<body>

<div> <h1>FaultFinder 2014</h1>
<p>
Fix-A-Fault

<p>
Fix the following problems:
</div>

<p>

<div>

<%
							System.out.println("In ViewFaults Page");
							List<FaultsStore> lFaults = (List<FaultsStore>) request
									.getAttribute("Faults");
							if (lFaults == null) {
						%>
						<p>No faults found</p>
						<%
							} 
							
							else {
						%>


						<%
							Iterator<FaultsStore> iterator;

								iterator = lFaults.iterator();
								while (iterator.hasNext()) {
									FaultsStore md = (FaultsStore) iterator.next();
									
						%>
						
						<%
								}
							    }
							
								}
						%>

</div>

<script>
function redirect()
{
window.open('index.jsp',"_self")
}
</script>

<button onclick="redirect()">LogOut</button>

</body>
</html>