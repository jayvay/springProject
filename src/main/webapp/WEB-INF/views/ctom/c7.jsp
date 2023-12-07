<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>c7.jsp</title>
  <jsp:include page="/include/bs4.jsp" />
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>이곳은 ctom 폴더의 c7.jsp입니다.</h2>
  <hr/>
 	<div>
 		<form method="post">
 			<div>성명 : <input type="text" name="name" id="name" value="유연석" class="form-control mb-2"/></div>
 			<div>나이 : <input type="number" name="age" id="age" value="39" min="0" max="99" class="form-control mb-2"/></div>
 			<div>아이디 : <input type="text" name="mid" value="uyeon123" class="form-control mb-2"/></div>
 			<div>비밀번호 : <input type="password" name="pwd" value="1234" class="form-control mb-2"/></div>
 			<div>성별 : 
 				<input type="radio" name="gender" value="남자"/>남자 &nbsp;
 				<input type="radio" name="gender" value="여자" checked/>여자
 			</div>
 			<div>주소 : <input type="text" name="address" value="서울" class="form-control mb-2"/></div>
 			<div><button type="submit" class="btn btn-primary">전송</button></div>
 			<input type="hidden" name="job" value="배우" />
 			<input type="hidden" name="wDate" value="<%= new java.util.Date() %>" />
 		</form>
 	</div>
 	<hr/>
 	<div>
  	<%-- <c:if test="${!empty name && !empty age}">  --%>
  		${vo.name} / ${vo.age} / ${vo.mid} / ${vo.pwd} / ${vo.gender} / ${vo.address} / ${vo.job} / ${vo.WDate}
  	<%-- </c:if> --%>
 	</div>
  <hr/>
  <p><a href="${ctp}/" class="btn btn-secondary">HOME</a></p>
</div>
<p><br/></p>
</body>
</html>