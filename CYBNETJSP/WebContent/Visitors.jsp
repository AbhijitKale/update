<%@page import="java.io.PrintWriter"%>
<%@page import="org.apache.tomcat.util.http.Cookies"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="C:\Users\abhijitka\Desktop\wall3.jpg">

<%! Cookie[] visitorCookie; 
	Cookie c;
	PrintWriter pw;
%>

<%
	pw = response.getWriter();
	visitorCookie = request.getCookies();


	if(visitorCookie != null)
		for(int i=0; i<visitorCookie.length; i++)
		{
			c = visitorCookie[i];
			//out.print(visitorCookie[i].getValue().toString());

			if(c.getName().equals("visitor"))
			{
				pw.print("Number of visitors : " + c.getValue());
			}
			
		}
		//pw.print("Number of visitors : " + visitorCookie.length);
%>


</body>
</html>