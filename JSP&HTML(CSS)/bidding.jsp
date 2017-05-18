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
		$("button").click(function(){
			if(parseInt($("h2").html())>0 && parseInt($("h2").html())<5000){
				$("#2").attr("disabled",true);
				$("#3").attr("disabled",true);
				$("h2").html(parseInt($("h2").html())+parseInt($("select").val()));
			}else if(parseInt($("h2").html())>=5000 && parseInt($("h2").html())<=50000){
				if(parseInt($("select").val())==1000){
					$("h2").html();
					alert("2000원 비딩을 시작해주십시오");
					$("#1").attr("disabled",true);
					$("#2").removeAttr("disabled");
					$("#3").attr("disabled",true);
				}else{
					$("h2").html(parseInt($("h2").html())+parseInt($("select").val()));	
				}
			}else{
				if(parseInt($("select").val())==2000){
					$("h2").html();
					alert("3000원 비딩을 시작해주십시오");
					$("#2").attr("disabled",true);
					$("#3").removeAttr("disabled",false);
				}else{
					$("h2").html(parseInt($("h2").html())+parseInt($("select").val()));
				}
			}
		})
	});
</script>
<style type="text/css">
option{disabled:}
</style>
</head>
<body>
	<h2>0</h2>
	<select name="bid">
		<option id="1">1000</option>
		<option id="2">2000</option>
		<option id="3">3000</option>
	</select>
	<button>입찰</button>
</body>
</html>