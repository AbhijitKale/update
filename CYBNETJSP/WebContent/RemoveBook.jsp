<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
<title>Remove Book</title>
</head>



<body background="C:\Users\abhijitka\Desktop\wall3.jpg">

	<sql:setDataSource var="data" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/CybageNet" user="root" password="root"/>
	
	<sql:query var="result" dataSource="${data}">
		SELECT * from book;
	</sql:query>
	
	<table border="1" width="50%">
		<tr>
			<th>BOOKID</th>
			<th>NAME</th>
			<th>AUTHOR</th>			
		</tr>
		
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.id}"/></td>
				<td><c:out value="${row.bookname}"/></td>
				<td><c:out value="${row.author}"/></td>
			</tr>
		</c:forEach>
		
	
	</table>
	<br>

<form method="get" action="RemovedBook.jsp">
<table style="width:25%" >
<tr><td><h2>Remove Book</h2></td></tr>
<tr>
<td> <font style="font-weight: bold;">the book Id to be deleted: </font> </td>  <td><input type="text" name="removedBookId"></td>
 </tr>
<tr>
<td></td>
 <td><input id="btnDelete" type="submit" value="Delete"></td>
</tr>
</table>
</form>
	
</body>
</html>