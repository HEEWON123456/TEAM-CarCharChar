<%@page import="com.reservation.db.ReservationDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>user/reservationMForm</title>
<link href="./css/myReservation.css" rel="stylesheet">
<link href="./css/header.css" rel="stylesheet">
<link href="./css/footer.css" rel="stylesheet">
</head>
<body>
<!-- <h1>나의 예약정보 조회</h1> -->
<jsp:include page="../css/header.jsp"></jsp:include>
<div id="wrapper">
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
<div class="table_list">
	<p class="user_txt"><%= dto.getUser_id() %>님의 예약정보 내용입니다.</p>
	<%
	for(int i = 0; i<mypageResList.size(); i++){
		dto = mypageResList.get(i);
		%>
		<div>
			<table border="1">
				<tr>
					<th>예약번호</th>
					<td><input type="text" name="res_num" value="<%=dto.getRes_num() %>"
						readonly="readonly"></td>
				</tr>
				<tr>
					<th>차량번호</th>
					<td><input type="text" name="res_car_num"
						value="<%=dto.getRes_car_num() %>"readonly="readonly"></td>
				</tr>
				<tr>
					<th>예약시작시간</th>
					<td><input type="text" name="res_stime" value="<%=dto.getRes_stime() %>" readonly="readonly"></td>
				</tr>
				<tr>
					<th>예약종료시간</th>
					<td><input type="text" name="res_time" value="<%=dto.getRes_time() %>" readonly="readonly"></td>
				</tr>
				<tr>
					<th>반납시간</th>
					<td><input type="text" name="return_car" value="<%=dto.getReturn_car() %>" readonly="readonly"></td>
				</tr>
	
	<!-- 						<tr> -->
	<!-- 							<th>회원번호</th> -->
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
<jsp:include page="../css/footer.jsp"></jsp:include>
</body>
</html>