<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table{

border-collapse: collapse;
margin: auto;
margin-top: 15%;

}

td{
border-collapse: collapse;
margin: auto;
margin-top: 15%;
padding: 5px;
}</style>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log Report</title>
</head>
<body background="C:\Users\abhijitka\Desktop\wall3.jpg">
	
	
	<sql:setDataSource var="data" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/CybageNet" user="root" password="root"/>
	
	<sql:query var="result" dataSource="${data}">
		select * from logg;
	</sql:query>
	
	<table border="1" width="50%">
	
	<tr><td colspan="2" align="center"><h2>Log Report</h2></td></tr>
		<tr>
			<th>USER NAME</th>
			<th>LOGIN TIME</th>			
		</tr>
		
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.username}"/></td>
				<td><c:out value="${row.logtime}"/></td>
			</tr>
		</c:forEach>
		
	
	</table>
	
</body>
</html>