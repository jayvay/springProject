<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>c4.jsp</title>
  <jsp:include page="/include/bs4.jsp" />
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>이곳은 ctom 폴더의 c4.jsp입니다.</h2>
  <!-- <div><a href="c4Path/ctom" class="btn btn-info">c4 호출</a></div> -->
  <!-- <div><a href="c4Path/ctom/23" class="btn btn-info">c4 호출</a></div> -->
  <!-- <div><a href="c4Path/ctom/23/test" class="btn btn-info">c4 호출</a></div> -->
  <div><a href="c4Path/ctom-23/test" class="btn btn-info">c4 호출</a></div>
  <hr/>
  <div>
  	<c:if test="${!empty name}">넘어온 값 : ${name} / ${age}</c:if>
 	</div>
 	<hr/>
 		
  <hr/>
  <p><a href="${ctp}/" class="btn btn-secondary">HOME</a></p>
</div>
<p><br/></p>
</body>
</html>