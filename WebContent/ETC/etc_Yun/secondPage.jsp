<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8");%>
	   <%!
	Connection connection;
	Statement statement;
	ResultSet resultSet;
	
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String upw = "tiger";
	String query = "select * from acornproduct";
	%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js">
 </script>
<script type="text/javascript">
$(document).ready(function(){
	
});
</script>

</head>
<body>
<%
	try{
		Class.forName(driver);
		connection = DriverManager.getConnection(url, uid, upw);
		statement = connection.createStatement();
		resultSet = statement.executeQuery(query);	
		
		while(resultSet.next()){
			
			String auction_id = resultSet.getString("auction_id");
			String auctioneer_id = resultSet.getString("auctioneer_id");
			String item_name = resultSet.getString("item_name");
			Date start_date = resultSet.getDate("start_date");
			Date end_date = resultSet.getDate("end_date");
			String state = resultSet.getString("state");
			String cureent_bid_amount = resultSet.getString("cureent_bid_amount");
			
			
			%>

			
			
			
			<form action= "bid_modify" method="post">
       auction_id : <%=auction_id %><br/><input type="hidden" name="auction_id" value="<%=auction_id %>">
       auctioneer_id : <%=auctioneer_id %> <br/><input type="hidden" name="auctioneer_id" value="<%=auctioneer_id %>">
       item_name : <%=item_name %> <br/><input type="hidden" name="item_name" value="<%=item_name %>">
       start_date : <%=start_date %> <br/><input type="hidden" name="start_date" value="<%=start_date %>">
       end_date : <%=end_date %> <br/><input type="hidden" name="end_date" value="<%=end_date %>">
       state : <%=state %> <br/><input type="hidden" name="state" value="<%=state %>">
       cureent_bid_amount : <%=cureent_bid_amount %> <br/><input type="hidden" name="cureent_bid_amount" value="<%=cureent_bid_amount %>">
					
<%
	
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(resultSet != null) resultSet.close();
			if(statement != null) statement.close();
			if(connection != null)connection.close();
		}catch(Exception e){}
	}

	%>
	<input type = "submit" value="비드 올리기">
	</form>	
</body>
</html>