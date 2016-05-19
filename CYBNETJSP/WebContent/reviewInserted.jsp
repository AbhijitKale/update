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
<body>

<%@ include file="InsertReview.jsp" %>
<sql:setDataSource var="data" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/CybageNet" user="root" password="root"/>



	
	
	
	<c:if test="${not empty param.rbookid and not empty param.review }">

	<sql:update var="result" dataSource="${data}">
			insert into review(bookid,username,review) values(?,?,?)
			<sql:param value="${param.rbookid}"></sql:param>
			<sql:param value="${sessionScope.key}"></sql:param>
			<sql:param value="${param.review}"></sql:param>
	 
	</sql:update>
</c:if>

	<c:if test="${result>=1}">
		<h3 align="center"><font size="5" color="green">Review Added</font></h3>
	</c:if>
</body>
</html>