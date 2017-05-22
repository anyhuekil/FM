<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "z02_vo.AuctionBidDTO"
    import = "z01_database.AuctionBidDAO" %>
<% request.setCharacterEncoding("UTF-8"); 
	// 모든 프로세스 처리는 이 페이지에 모을생각.

%>
   
<%
AuctionBidDAO db = new AuctionBidDAO();
AuctionBidDTO bidder = new AuctionBidDTO();
String raisedBid = (request.getParameter("afterR"));
bidder.setCurrentBid( new Double( raisedBid ) ) ; //###
bidder.setAuctionID( new Integer(request.getParameter("hiddenBidderId")) );
db.raisePrice(bidder); //###
//response.sendRedirect("bidding.jsp");
response.sendRedirect("auction_main.jsp");
%>
<!DOCTYPE html >
<html>
<head>
<script src = "http://code.jquery.com/jquery-3.2.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>

$(document).ready(function(){
	
});


</script>
<title>Insert title here</title>
</head>
<body>
<h1> 입찰완료. </h1>
<h3><%= bidder.getCurrentBid() %></h3>
</body>
</html>