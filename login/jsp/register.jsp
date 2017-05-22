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
		$("#checkId").click(function(){
				if($("input[name=newId]").val()==""){
					alert("id를 입력하세요");
					$("input[name=newId]").focus();
					return;
				}else{
					var newId = $("input[name=newId]").val();
					window.open("checkId.jsp?checkId="+newId,"popup_window", "width=500, height=300, scrollbars=no");
				}
		})
		$("#insBtn").click(function(){
			if($("input[name=id]").val()==""){
				alert("아이디를 입력하세요.");
				$("input[name=id]").focus();
				return;
			}else if($("input[name=newPwd]").val()=="" || $("input[name=newPwd2]").val()==""){
				alert("비밀번호를 입력하세요.");
				$("input[name=newPwd]").focus();
				return;
			}else if($("input[name=newPwd]").val()!=$("input[name=newPwd2]").val()){
				alert("비밀번호가 일치하지 않습니다.");
			}else{
				$("form").submit();
				alert("회원가입완료");
			}
		})
	});
</script>
<style type="text/css">

</style>
</head>

<body>
	<form name="membership" action="insertMember.jsp">
		<table border=1>
			<tr>
				<th>id</th>
				<th><input name="newId" ></th>
				<th><input type="button" id="checkId" value="중복확인"></th>
			</tr>
			<tr>
				<th>비밀번호</th>
				<th><input type="password" name="newPwd"></th>
			</tr>	
			<tr>
				<th>비밀번호 재입력</th>
				<th><input type="password" name="newPwd2"></th>
			</tr>
			<tr>
				<th colspan="3"><input type="button" id="insBtn" value="회원가입"></th>
			</tr>
		</table>
	</form>
</body>
</html>