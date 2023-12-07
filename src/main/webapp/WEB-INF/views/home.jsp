<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% pageContext.setAttribute("name2", "신짱구"); %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<%-- <%@ page session="false" %> --%>
<html>
<head>
	<title>Home</title>
	<jsp:include page="/include/bs4.jsp"/>
</head>
<body>
<div class="container">
	<h1>
		Hello world!  
	</h1>
	
	<P>  The time on the server is ${serverTime}. </P>
	<hr/>
	<p style="text-align:center">
		<a href="${ctp}/atom/atom1?name=${name1}">a1.jsp(/atom1)</a>
		<a href="${ctp}/atom/a1?name=${name2}">a1.jsp(/a1)</a>
		<a href="${ctp}/atom/a2?name=${name1}">a2.jsp</a>
		<a href="${ctp}/atom/a3?name=${name2}">a3.jsp</a>
	</p>
	
	<hr/>
	<div>
		<form name="myform" method="post" action="${ctp}/aCheck">
			<div>나이 : <input type="number" name="age" value="10" min="0" max="99"/></div>
			<div><input type="hidden" name="namepost" value="${name1}"/></div>
			<input type="submit" value="나이체크"/>
			<input type="button" value="다시하기" onclick="location.href='${ctp}/';"/>
		</form>
		<c:if test="${!empty age}">넘어온 나이는 ${age}</c:if>
		<hr/>
		<div>
			name1 = ${name1}/
			name2 = ${name2}/
			namepost = ${name}
		</div>
		<hr/>
		<div>
			<input type="button" value="이동" onclick="location.href='${ctp}/atom/${url}?name=${name}&age=${age}';"/>
		</div>
	</div>
	<hr/>
	<p>
		<a href="${ctp}/ctom/c1" class="btn btn-warning">c1 호출</a> |
		<a href="${ctp}/ctom/c2" class="btn btn-dark">c2 호출</a> |
		<a href="${ctp}/ctom/c3" class="btn btn-warning">c3 호출</a> |
		<a href="${ctp}/ctom/c4" class="btn btn-dark">c4 호출</a> |
		<a href="${ctp}/ctom/c5" class="btn btn-warning">c5 호출</a> |
		<a href="${ctp}/ctom/c6" class="btn btn-dark">c6 호출</a> |
		<a href="${ctp}/ctom/c7" class="btn btn-warning">c7 호출</a> |
		<a href="${ctp}/ctom/c8" class="btn btn-dark">c8 호출</a>
	</p>
	<hr/>
	<p><a href="${ctp}/dtom/d1" class="btn btn-success">d1 호출</a></p>
	
	
	
	
	<hr/>
	-----------------혼-공-(스프링 1일차)------------------------
	<div>
		<form name="myform2" method="post" action="${ctp}/bCheck">
			<div>좋아하는 드라마나 영화: <input type="text" name="dramaMovie" /></div>
			<input type="submit" value="좋아요"/>
			<input type="button" value="다시하기" onclick="location.href='${ctp}/';" />
		</form>
		당신이 좋아하는 드라마 또는 영화는 ${dramaMovie} 군요!<br/>
		<div><input type="button" value="이동" onclick="location.href='${ctp}/btom/${url}';"/></div>
		url : ${url}
	</div>
</div>
</body>
</html>
