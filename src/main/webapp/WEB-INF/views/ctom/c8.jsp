<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>c8.jsp</title>
  <jsp:include page="/include/bs4.jsp" />
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>이곳은 ctom 폴더의 c8.jsp입니다.</h2>
  <p>
  	<a href="${ctp}/" class="btn btn-secondary">HOME</a>
  	<a href="${ctp}/dtom/d1Service" class="btn btn-secondary">d1</a>
  	<a href="${ctp}/dtom/d1Service2" class="btn btn-secondary">d1(2)</a>
  </p>
</div>
<p><br/></p>
</body>
</html>