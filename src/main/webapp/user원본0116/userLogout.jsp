<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user_logout.jsp</title>
</head>
<body>
<%
session.invalidate();
%>
<script type="text/javascript">
	alert("๋ก๊ทธ์์");
	location.href="user_home.jsp";
</script>
</body>
</html>