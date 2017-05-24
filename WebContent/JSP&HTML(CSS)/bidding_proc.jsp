<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "z02_vo.*"
    import = "z01_database.*" %>
<% request.setCharacterEncoding("UTF-8"); 
	// 모든 프로세스 처리는 이 페이지에 모을생각.

%>
   
<%
AuctionItemDAO db = new AuctionItemDAO();
AuctionItemDTO bidder = new AuctionItemDTO();
String raisedBid = (request.getParameter("afterR"));
bidder.setCurrentBidAmount( new Double( raisedBid ) ) ; //###
bidder.setAuctionId( new Integer(request.getParameter("hiddenBidderId")) );
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

</body>
</html>