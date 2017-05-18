<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
// 예를 들어서 현재 비딩가격이 5000원이다. 그러면 id="1"인 옵션(1000원)의 비딩을 불가하게 하겠다.
	$(document).ready(function(){
		if($("h2").html()==5000){
			$("#1").attr("disabled",true);
		}
	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<h2>5000</h2>
	<select>
		<option id="1">1000</option>
		<option id="2">2000</option>
		<option id="3">3000</option>
	</select>
</body>
</html>