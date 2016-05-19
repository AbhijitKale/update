<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="C:\Users\abhijitka\Desktop\wall3.jpg">
<style>
	table{

border-collapse: collapse;
margin: auto;
margin-top: 3%;

}

td{
border-collapse: collapse;
margin: auto;
margin-top: 15%;
padding: 5px;
}

</style>



<sql:setDataSource var="data" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/CybageNet" user="root" password="root"/>



<sql:query var="result" dataSource="${data}">
		SELECT * from book
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

<form method='get' action='reviewInserted.jsp'>
		
		
	<table style="width:25%" >
	
	<tr><td><h2>Review Book</h2></td></tr>

<tr>
<td> <font style="font-weight: bold;"> Enter the Book Id :  </font> </td>  <td><input type='text' name='rbookid'></td>
 </tr>
 
 <tr>
 <td> <font style="font-weight: bold;">Enter the review : </td>  <td><textarea rows='4' cols='15' name='review'></textarea></td>
 </tr>


<tr>
<td></td>


<%-- <input type='hidden' name='rbookname' value="${ }"> --%>
<td >
 <input type='submit' value='Add Review'></td> 
  </tr>
  
  </table>
  
 </form>
</body>
</html>