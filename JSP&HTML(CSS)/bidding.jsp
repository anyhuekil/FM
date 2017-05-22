<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
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
<script src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
// 예를 들어서 현재 비딩가격이 5000원이다. 그러면 id="1"인 옵션(1000원)의 비딩을 불가하게 하겠다.
$(document).ready(function(){
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
option{disabled:}
</style>
</head>
<body>
	<form method = post action = bidding_proc.jsp >
	<h2><%=curBid %> </h2>
	
		추가가격 +<input type = text name = curr value = <%=nowBidPrice %> /> <br/>
		입창가능가격 : <input type = text name = afterR value = <%=(curBid+nowBidPrice) %> /> <br/>
		<button>입찰</button> <br/>
		<input type = text name = hiddenBidderId value = <%=bidder.getAuctionID() %> style = "visibility:hidden;" /> 
		
	</form>
</body>
</html>