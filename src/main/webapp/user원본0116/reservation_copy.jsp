<%@page import="com.reservation.db.ReservationDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>user/reservationMForm</title>
<link href="./css/test.css" rel="stylesheet">
</head>
<body>
<h1>���� �������� ��ȸ</h1>
	<div id="wrapper">
		<div class="myPage_menu">
			<div>
<!-- 				<button onclick="location.href='./UserInfoReservation.us'">���� ��ȸ</button> -->
<!-- 				<button onclick="#">���� �ı�</button> -->
<!-- 				<button onclick="location.href='./UserQnaList.us'">1:1 ����</button> -->
<!-- 				<button onclick="location.href='./UserInfo.us'">ȸ����ȸ</button> -->
<!-- 				<button onclick="location.href='./UserInfoDeleteForm.us'">ȸ��Ż��</button> -->
				<%
 					String sessionId = (String)session.getAttribute("sessionId");
					if(sessionId.equals("admin")) { %>
					<button onclick="#">���� �ı�</button>
					<button onclick="location.href='./UserQnaList.us'">1:1 ����</button>
					<button onclick="location.href='./UserInfo.us'">ȸ����ȸ</button>
					<button onclick="location.href='./UserInfoDeleteForm.us'">ȸ��Ż��</button>
					<button onclick="location.href='./UserList.us'">ȸ�����</button>
					<% 	
 					} else {
 						%>
					<button onclick="location.href='./UserInfoReservation.us'">���� ��ȸ</button>
					<button onclick="#">���� �ı�</button>
					<button onclick="location.href='./UserQnaList.us'">1:1 ����</button>
					<button onclick="location.href='./UserInfo.us'">ȸ����ȸ</button>
					<button onclick="location.href='./UserInfoDeleteForm.us'">ȸ��Ż��</button>
 							<%
 					}%>
			</div>
		</div>
<%
// String user_id = (String)session.getAttribute("sessionId");
// int res_num = (Integer)session.getAttribute("res_num");
// String res_car_num = (String)session.getAttribute("res_car_num");
// Date res_stime = (Date)session.getAttribute("res_stime");
// int res_time = (Integer)session.getAttribute("res_time");
// int return_car = (Integer)session.getAttribute("return_car");
// int user_num = (Integer)session.getAttribute("user_num");

// String sessionId=(String)session.getAttribute("sessionId");
List<ReservationDTO> mypageResList = (List<ReservationDTO>)request.getAttribute("mypageResList");
int startPage=(Integer)request.getAttribute("startPage");
int pageBlock=(Integer)request.getAttribute("pageBlock");
int currentPage=(Integer)request.getAttribute("currentPage");
int endPage=(Integer)request.getAttribute("endPage");
int pageCount=(Integer)request.getAttribute("pageCount");
int count=(Integer)request.getAttribute("count");

ReservationDTO dto = mypageResList.get(1);
%>
<%=dto.getUser_id() %>���� �������� �����Դϴ�.<br>
<div class="table_list">
	
	<% 
	for(int i = 0; i<mypageResList.size(); i++){
		dto = mypageResList.get(i);
		%>
		<div>
			<table border="1">
				<tr>
					<th>�����ȣ</th>
					<td><input type="text" name="res_num" value="<%=dto.getRes_num() %>"
						readonly="readonly"></td>
				</tr>
				<tr>
					<th>������ȣ</th>
					<td><input type="text" name="res_car_num"
						value="<%=dto.getRes_car_num() %>"readonly="readonly"></td>
				</tr>
				<tr>
					<th>������۽ð�</th>
					<td><input type="text" name="res_stime" value="<%=dto.getRes_stime() %>" readonly="readonly"></td>
				</tr>
				<tr>
					<th>��������ð�</th>
					<td><input type="text" name="res_time" value="<%=dto.getRes_time() %>" readonly="readonly"></td>
				</tr>
				<tr>
					<th>�ݳ��ð�</th>
					<td><input type="text" name="return_car" value="<%=dto.getReturn_car() %>" readonly="readonly"></td>
				</tr>
	
	<!-- 						<tr> -->
	<!-- 							<th>ȸ����ȣ</th> -->
	<%-- 							<td><input type="text" name="user_num" value="<%=dto.getUser_num() %>" --%>
	<!-- 								readonly="readonly"></td> -->
	<!-- 						</tr> -->
			</table>
		</div>
	<%
	}
	%>
	</div>
</div>
</body>
</html>