<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "z02_vo.Item, z01_database.ItemDB"
    import = "z02_vo.AuctionBidDTO"
    import = "z01_database.AuctionBidDAO"
    
    %>
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src = "http://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("input[name = curr]").attr("disabled", true);		
		<%
		AuctionBidDTO bidder = new AuctionBidDTO();
		AuctionBidDAO db = new AuctionBidDAO();
		bidder.setAuctionID(1);		//###
		Double curBid = new Double(db.getPrice(bidder).getCurrentBid() );//###
		int boundary[] = {0,5000,50000,10000000};
		int increaseBid[] = {1000,2000,3000};
		int interval = 0;
		int nowBidPrice = 0;
		for(int i =0; i<increaseBid.length; i++ ){
			if( curBid >= boundary[i] && curBid < boundary[(i+1)] ){
				nowBidPrice = increaseBid[i];
				break;
			}
		}
		%>
		var boundary = [0,5000,50000,10000000];
		var curBid = <%=curBid %>;
		var nowBidPrice = <%=nowBidPrice %>
		$("button").click(function(){
			$("form").submit();
		});
	});
</script>
<style type="text/css">
	

	*{margin:auto; padding:0;}
	h2{margin-left:30px; line-height:60px; color:blue; font-family: "Comic Sans MS"}
	h1{text-align:center; font-size:40px; color:blue; font-family: "Comic Sans MS"}
	h3{margin-left:30px; line-height:60px; font-family: "Comic Sans MS"}
	p{margin-left:30px; line-height:60px; font-family: "Comic Sans MS"}
	div{border:1px dotted black; display:inline-block;}
	#main_container{display:block; width:1200px; height:100vh;}
	#item_picture{ margin:2%; width:45%; height:50%; float:left; 
	 background:url("javaFile/test1.png") no-repeat center; 	}
	#item_info{margin:2%; width:45%; height:50%; float:left;}
	#countdown_info{margin:2%; width:45%; height:15%; float:left;}
	#bidding_info{margin:2%; width:45%; height:15%; text-align:center;}
	#seller_info{margin:2%; width:95%; height:20%;}
	
	#pict{ }
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
			<form method = post action = bidding_proc.jsp >
				<h2>Current Bid: $<%=curBid %>  </h2>
				Raise Bid +$<input type = text name = curr value = <%=nowBidPrice %> /><br/>
				Total Bid Price : $<input type = text name = afterR value = <%=(curBid+nowBidPrice) %> />
				<pre></pre> <button>Place Bid</button> <br/>
				<input type = text name = hiddenBidderId value = <%=bidder.getAuctionID() %> style = "visibility:hidden;" /> 
			</form>
		</div>
		<div id="seller_info">
			<h3>Seller Informaton</h3>
			<h4>Name</h4><p>Ronaldo</p>
			<h4>Phone Number</h4><p>777777777</p>
		</div>
	</div>
</body>
</html>