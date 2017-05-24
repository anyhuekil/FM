<!--
	경매카운트만 확인하기 위해 DB테이블에 종료시간 속성만 추가함.
-->



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*, java.text.*"
    import = "z02_vo.Item, z01_database.ItemDB"
    %>
<%
request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
// dao, dto 세팅 
  ItemDB dao = new ItemDB();
  Item dto = new Item();
//	날짜 변환. sql에서 rs.getDate로 테이블의 마감시간값을 따오면 yyyy/MM/dd로만 표시되서 
//	SimpleDateFormat으로 날짜형식을 변형함.
//	Timestamp api를 사용하면 따올 수 있기는 한데 뭔가 이상해서 포기함.
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");   //####
  String day = sdf.format(dao.when(dto).getJdday());
  
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		setTime();  //####
	});

//	날짜 설정 함수
	function setTime(){
//		현재 시간	
		var sysday = new Date();
//		DB에서 불러오는 마감시간		
		var dday = new Date("<%=day%>");
//		마감시간-현재시간=초로 계산됨. 1000 = 1초.		
		var gap = parseInt((dday.getTime()-sysday.getTime())/1000);
//		일수. 60초*60분*24시간		
		var days = parseInt(gap/(60*60*24));
//		시간수. 60초*60분		
		var hours = parseInt((gap%(60*60*24))/(60*60));
//		분수. 60초	
		var minutes = parseInt((gap%(60*60))/60);
//		초수. 
		var seconds = gap%60;
//		만약 마감시간과 현재시간 차이가 0보다 크면 계속 화면단에 시간 표시
		$("h1").html(days+"일 "+hours+"시간 "+minutes+"분 "+seconds+"초 ");
//		아니면 경매종료 표시 및 alert창	
		if(gap<=0){
			$("h1").html("경매종료");
			alert("경매끝!");
			clearInterval(count);
		}
	}
//	setInterval 함수로 1초마다 계속 카운트다운 refresh
	var count = setInterval(setTime,1000);
</script>
<style type="text/css">

</style>
</head>
<body>
	<h1></h1>
</body>
</html>