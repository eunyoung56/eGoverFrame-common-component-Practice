<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- jsp에서 jstl의 문법을 사용하기 위한 설정 -->
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table{
	width:400px;
	boarder-collapse:callapse; /* cell 간격 없앰 */
}
th,td{
	border:1px solid #cccccc;
	padding:5px;
}
</style>
<body>
<form name = "frm" method ="post" action="codeModifySave.do">
<input type = "hidden" name = "code" value ="${vo.code }">
<table>
	<tr>
		<th>분류</th>
		<td>
			<select name = "gid">
				<option value ="1" <c:if test="${vo.gid == '1'}">selected</c:if> > JOG(업무)</option>
				<option value ="2" <c:if test="${vo.gid == '2'}">selected</c:if> >HOBBY(취미)</option>
			</select>
		</td>
	</tr>
	
	<tr>
		<th>코드명</th>
		<td><input type = "text" name = "name" value = "${vo.name }"></td>
	</tr>
	
	<tr>
		<th colspan = "2">
		<button type = "submit" onclick= "fn_submit(); return false;">저장</button>
		<button type = "reset">취소</button>
		</th>
	</tr>
</table>
</form>
</body>
</html>