<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js">
 </script>
<script type="text/javascript">
$(document).ready(function(){
	
});
</script>

</head>
<body>
<%=session.getAttribute("cureent_bid_amount") %> 입니다.<br>
<%=session.getAttribute("auctioneer_id") %> 님의 가격이 수정되었습니다.<br>
마감 시간은 <%=session.getAttribute("end_date") %> 입니다.<br>
</body>
</html>