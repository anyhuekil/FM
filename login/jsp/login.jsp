<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z02_vo.Member"
    import="z01_database.Z01_MemberDB, java.sql.*"
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
		$("#logBtn").click(function(){
			if($("input[name=id]").val()==""){
				alert("아이디를 입력하세요.");
				$("input[name=id]").focus();
				return;
			}else if($("input[name=pwd]").val()==""){
				alert("비밀번호를 입력하세요.");
				$("input[name=pwd]").focus();
				return;
			}else{
				$("form").submit();
			}	
		})
		$("#regBtn").click(function(){
			$(location).attr("href", "register.jsp" );
		})
	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<form method="post" action="login_check.jsp">
		<table>
			<tr>
				<th>아이디</th>
				<th><input name="id"></th>
				<th>비밀번호</th>
				<th><input type="password" name="pwd"></th>
				<th><input type="button" id="logBtn" value="로그인"></th>
				<th><input type="button" id="regBtn" value="회원가입"></th>
			</tr>
		</table>
	</form>
</body>
</html>