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
	$(document).ready(function(){

	});
</script>
<style type="text/css">
	*{border:1px dotted red; margin:auto; padding:0; }
	div{display:inline-block;}
	#main_container{display:block; width:1200px; height:800px;margin:auto;}
	#item_picture{margin:3%; width:40%; height:50%;}
	#item_info{margin:3%; width:40%; height:50%;}
	#bidding_info{width:100%; height:30%;}
	
</style>
</head>
<body>
	<div id="main_container">11
		<div id="item_picture"></div>
		<div id="item_info"></div>
		<div id="bidding_info"></div>
	</div>
</body>
</html>