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
	

	*{margin:auto; padding:0;}
	h2{margin-left:30px; line-height:60px; color:blue; font-family: "Comic Sans MS"}
	h1{text-align:center; font-size:40px; color:blue; font-family: "Comic Sans MS"}
	h3{margin-left:30px; line-height:60px; font-family: "Comic Sans MS"}
	p{margin-left:30px; line-height:60px; font-family: "Comic Sans MS"}
	div{ border:1px dotted black; display:inline-block;}
	#main_container{display:block; width:1200px; height:950px;}
	#item_picture{ margin:2%; width:45%; height:50%; float:left; }
	#item_info{margin:2%; width:45%; height:50%; float:left;}
	#countdown_info{margin:2%; width:45%; height:15%; float:left;}
	#bidding_info{margin:2%; width:45%; height:15%; text-align:center;}
	#seller_info{margin:2%; width:95%; height:20%;}
</style>
</head>
<body>
	<div id="main_container" class="containner">
		<div id="item_picture"></div>
		<div id="item_info">
			<h2><b>Item Name</b></h2>
			<p>Name DB</p>
			<h2>Item Condition</h2>
			<p>Condition DB</p>
			<h2>Start Date</h2>
			<P>Date DB</P>
			<h2>End Date</h2>
			<p>Date DB</p>
		</div>
		<div id="countdown_info">
			<h1>Time Left</h1>
			<p>Countdown</p>
		</div>
		<div id="bidding_info">
			<h2>Current Bid: 20000$ </h2>
			<input type="number" value="input bid"> <button>Place Bid</button>		
		</div>
		<div id="seller_info">
			<h3>Seller Informaton</h3>
			<h4>Name</h4><p>Ronaldo</p>
			<h4>Phone Number</h4><p>777777777</p>
		</div>
	</div>
</body>
</html>