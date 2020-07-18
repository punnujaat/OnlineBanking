


<%@page import="g.RegisterUser"%>
<% 
	
	
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String  repassword=request.getParameter("repassword");
		
		String amoun=request.getParameter("amount");
		//double amount=Double.parseDouble(amoun);
		
		String adderess=request.getParameter("adderess");
		
		String ph=request.getParameter("phone");
		//double phone=Double.parseDouble(ph);
		//double mname=Double.parseDouble(num);
		//String country=request.getParameter("country");
	
	    int status=RegisterUser.register(username, password, repassword, amoun, adderess,ph);
	   
	    
		if(status>0){
			out.print("WELCOME! YOUR ACCOUNT HAS OPENED");
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
		}
		else{
			out.print("Sorry,Registration failed. please try later");
			RequestDispatcher rd=request.getRequestDispatcher("MyHtml.html");
			rd.include(request, response);
		
		
		
	

}
%>