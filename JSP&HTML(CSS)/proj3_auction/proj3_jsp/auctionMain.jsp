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
/*	파랑 : #779ECB
	빨강	: #FF6961
	녹색 : #A0D6B4
	주황 : #FFB347
	보라 : #B19CD9
	갈색 : #836953
	노랑 : #FDFD96
	회색 : #CFCFC4
*/
	*{border:1px dotted red; margin:0; padding:0; }
	div{display:inline-block;}
	.main_container{background: #FFB347; display:block; width:1200px; height:800px;margin:auto;}
	.item_picture{ background: #A0D6B4; margin: 2.5% 1.25% 2.5% 2.5%; width:45%; height:95%;}
	.product_info{background: #B19CD9; margin: 2.5% 2.5% 2.5% 1.25%; width:45%; height:95%;}
	
	.item_info{background: #836953; margin: 5% 2.5% 2.5% 2.5%; width:95%; height:30%;}
	.bidding_info{background: #836953; margin: 2.5%; width:95%; height:30%;}
	.seller_info{background: #836953; margin:  2.5% 2.5% 5% 2.5%; width:95%; height:30%;}
	.pict{ background:url("img/test1.png") no-repeat center; margin: 2.5%; width:95%; height: 70%; }
	.itemCurrBid_big{background: #FDFD96; margin: 2.5%; width:95%; height: 20%; }
	
	.table{ display: table; }
	.table_row{ display: table-row; }
	.table_cell{ display: table-cell; align: center; }
	.product_info div div{background-color: #FFB347; }
	
	.title{ margin: 1% 2.5% 0.5% 2.5%; width: 95%; height: 35%; text-align: center; font-weight: bolder ;}
	.subTitle{ margin: 0.5% 2.5% 0.5% 2.5%; width: 95%; height: 15%; }
	.detailSmall{ margin: 0.5% 5% 0.5% 5%; width: 90%; height: 15%; }
	.detailLarge{ margin: 0.5% 5% 1% 5%; width: 90%; height: 20%; }
	
	.itemCurrBid_small
	
	
</style>
</head>
<body>

	<div class="main_container">
		<div class = "item_picture " >
			<div class = "pict table"> 여기 사진 </div>
			<div class = "itemCurrBid_big table"> 여기 현재가격 
			</div>
		</div>
		
		<div class="product_info">
			<div class="item_info table">
				<div class = "title">
					제품제목
				</div>
				<div class = "subTitle">
					제품상태: 새상품, 중고최상급, 중고중급, 쓰레기
				</div>
				<div class = "detailSmall">
					제품위치: 미국 뉴욕 - 해외직구/ CA물품센터 경유
				</div>
				<div class = "detailLarge">
					StartAt, EndAt
				</div>
			</div>
			<div class="bidding_info table"> 
				<div class = "title"> 입찰내용들 </div>
				<div class = "detailLarge "> 입찰!! </div>
			</div>
			<div class="seller_info table">
				<div class = "title" >
					 판매자정보들 
				</div>
				<div class = "subTitle "> 
					team3@auction.com(java) 
				</div>
				<div class = "detailSmall "> 
					Platinum(java) 
				</div>
				<div class = "detailSmall "> 
					4/5점(java) 
				</div>
			
			</div>
		</div>
	</div>
</body>
</html>