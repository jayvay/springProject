<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>a3.jsp</title>
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>a3.jsp 입니다~</h2>
	<div>넘어온 값 : ${data}</div>
	<div>넘어온 이름 : ${name}</div>
	<div>넘어온 성별 : ${gender}</div>
	<div>넘어온 나이 : ${age}</div>
	<hr/>
	<p style="text-align:center">
		<a href="${ctp}/atom/a1">a1.jsp</a>
		<a href="${ctp}/atom/a2">a2.jsp</a>
		<a href="${ctp}/">home</a>
	</p>
</div>
<p><br/></p>
</body>
</html>