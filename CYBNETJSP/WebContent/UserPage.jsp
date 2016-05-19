<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.Timestamp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="C:\Users\abhijitka\Desktop\wall3.jpg">
<h1>Welcome, <c:out value="${sessionScope.key}"/></h1>

<%!
static ArrayList<String> onlineList=new ArrayList<String>();
	String userName="${sessionScope.key}";
	Date date;
	Timestamp timestamp;
%>


<style>

table {
	border-collapse: collapse;
margin: auto;
margin-top: 15%;
}
a{
	color: maroon;
}

</style>



<%


	
	onlineList.add(userName);

	request.getSession().setAttribute("oList", onlineList);
%>


<sql:setDataSource var="data" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/CybageNet" user="root" password="root"/>
	
	<sql:update var="result" dataSource="${data}">
		insert into logg values(?,?);
		<sql:param value="${sessionScope.key}"/>
		<sql:dateParam value="<%=new Timestamp(new Date().getTime())%>" type="TIME"/>
	</sql:update>

<table>
	<ul>
	
	<tr>
	<td><h2><a href="SearchBook.jsp">Search Book</a></h2></td> 
	</tr>
		
	<tr>
	<td><h2><a href="InsertReview.jsp">Insert Review</a></h2></td> 
	</tr>
	
		<tr>
	<td><h2><a href="LoginPage.jsp">Logout</a></h2></td> 
	</tr>
		
	</ul>
</table>
</body>
</html>