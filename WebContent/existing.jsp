<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>

</head>

<body>

<div id="top_links">
  

<div id="header">
	<h1>MINI - BANK<span class="style1"></span></h1>
    <h2>ExtraOrdinary Service</h2>
    <A href="index.html"><IMG SRC="images/home1.gif"></IMG></A>	
</div>

<div id="navigation">
    <ul>
    
    <li><a href="balance.jsp">BALANCE</a></li>
    <li><a href="deposit1.jsp">DEPOSIT</a></li>
    <li><a href="withdraw1.jsp">WITHDRAW</a></li>
    <li><a href="transfer1.jsp">TRANSFER</a></li>
    <li><a href="closeac1.jsp">CLOSE A/C</a></li>
    <li><a href="existing1.jsp">Profile</a></li>
    <li><a href="logout.jsp">LOGOUT</a></li>
    </ul>
</div>



<table style="width:897px; background:#FFFFFF; margin:0 auto;">
<tr >
	<td width="300" valign="top" style="border-right:#666666 1px dotted;">
    	<div id="services"><h1>Services</h1><br>
		    <ul>
        	<li><a href="#">www.javatpoint.com</a></li>
            <li><a href="#">www.javacstpoint.com </a></li>
            <li><a href="#">www.javatpoint.com/forum.jsp</a></li>
            </ul>
			
       </div>
	</td>
    
    <td width="1200" valign="top">
    	
    	<% 
%>
<%
response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);
%>
<table><%
String userName=request.getParameter("username");
request.getSession().setAttribute("username",userName);
if(request.getSession().getAttribute("username")==null)
    response.sendRedirect("index.jsp");

     String user=request.getParameter("username");
		String pass=request.getParameter("password");
	    boolean status=verifyLogin1.checkLogin1(user,pass);
		//if(status==true){
		//	out.print("Welcome    " + username);
		try {
		if(status==true){
			out.print("Welcome    " + user);
		
			Connection con=GetCon.getCon();
			PreparedStatement ps=con.prepareStatement("Select * from newaccount.raft where UserName=? and Password=?");
            ps.setString(1,user);
            ps.setString(2,pass);
			ResultSet rs=ps.executeQuery();
			
			
			out.print("<table align='left' cellspacing='5' cellpadding='5'>");
			out.print("<tr><th>ACCOUNT NO</th><th>USERNAME</th><th>AMOUNT</th><th>ADDRESS</th><th>PHONE</th></tr>");
			while(rs.next()){
			    int accountno1=rs.getInt(1);
				session.setAttribute("User",user);
				session.setAttribute("Pass",pass);
				
			
				
				out.print("<tr>");
				out.print("<td>" + rs.getInt(1) + "</td>");
				out.print("<td>" + rs.getString(2) + "</td>");
				out.print("<td>" + rs.getString(5) + "</td>");
				out.print("<td>" + rs.getString(6) + "</td>");
				out.print("<td>" + rs.getString(7) + "</td>");
				out.print("</tr>");
			
			}
			out.print("</table>");
			
			
			
		}
		else{
			out.print("Please check your username and Password");
			request.setAttribute("balance","Please check your username and Password");
			%>
			<jsp:forward page="existing1.jsp"></jsp:forward> 
			<% 
			}
		 }catch (SQLException e) {
			e.printStackTrace();
		}
		
		//}
		
			//}
			%></table><%
%>
    	
    	
		</table>


<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="g.*" %>
  
