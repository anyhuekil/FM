<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z02_vo.Member"
    import="z01_database.Z01_MemberDB"
    %>
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=path%>/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<%
	String newId = request.getParameter("newId");
	String newPwd = request.getParameter("newPwd");
	Z01_MemberDB dao = new Z01_MemberDB();
	Member dto = new Member();
	dto.setJid(newId);
	dto.setJpwd(newPwd);
	dao.insertMem(dto);
	response.sendRedirect("login.jsp");
	
%>
<body>

</body>
</html>