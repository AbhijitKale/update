<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="RemoveBook.jsp"%>




<c:if test="${not empty param.removedBookId }">

	<sql:update var="result" dataSource="${data}">
			delete from book where id=?
			
			<sql:param value="${param.removedBookId}"></sql:param>
</sql:update>

</c:if>

<c:if test="${result>=1}">
		<c:redirect url="RemoveBook.jsp"></c:redirect>
		<h3 align="center"><font size="5" color="green">Book deleted</font></h3>
	</c:if>
	<c:if test="${result<1}">
		<h3 align="center"><font size="5" color="green">Book Not Found</font></h3>
	</c:if>
	
	
</body>


</html>