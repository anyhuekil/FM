<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z02_vo.Member"
    import="z01_database.Z01_MemberDB"
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
</script>
<style type="text/css">

</style>
</head>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	Z01_MemberDB dao = new Z01_MemberDB();
	int check = dao.checkLogin(id, pwd);

%>
<body>
	<%if(check==0){ %>
		<h2>id또는 비밀번호 오류</h2>
		<a href="register.jsp">회원가입하기</a>
		<a href="login.jsp">다시 로그인하기</a>
	<%}else{ %>
		<h2>접속성공! <%=id %>님 환영합니다!</h2>	
	<%} %>	
</body>
</html>