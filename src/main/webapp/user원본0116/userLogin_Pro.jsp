<%@page import="com.user.db0116.UserDTO"%>
<%@page import="com.user.db0116.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user_login_Pro.jsp</title>
</head>
<body>
<%
String sessionId = request.getParameter("user_id");
String user_pass = request.getParameter("user_pass");

UserDAO dao = new UserDAO();	
UserDTO dto = dao.UserCheck(sessionId, user_pass);

if(dto!=null){
	session.setAttribute("sessionId", sessionId);
	response.sendRedirect("user_home.jsp");
}else{
	%>
	<script type="text/javascript">
		alert("입력하신 정보 틀림");
		history.back();
	</script>
	<%
}
%>
</body>
</html>