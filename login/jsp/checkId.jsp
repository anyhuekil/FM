<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="login_jh.Member"
    import="login_jh.Z01_MemberDB"    
    %>
<%request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

	});
	function sendId(checkId){
		opener.membership.newId.value=checkId;
		window.close();
	}
</script>
<style type="text/css">

</style>
</head>
<%	String checkId = request.getParameter("checkId");
	Z01_MemberDB dao = new Z01_MemberDB();
	int confirm = dao.confirmId(checkId);
%>
<body>
	<form method="post" action="checkId.jsp">
	<%if(confirm!=0){ %>
		<h2>사용중인 ID입니다.</h2>
		아이디: <input name="checkId">
		<input type="submit" value="중복체크">
	<%}else{ %>
		<h2>사용가능한 ID입니다.</h2>
		<input type="button" value="아이디 사용하기" onclick="javascript:sendId('<%=checkId%>')">
	<%} %>
	</form>	
</body>
</html>