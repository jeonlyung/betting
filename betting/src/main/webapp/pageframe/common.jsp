<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공통 페이지</title>
</head>
<body>


<script type="text/javascript">

	//msg메시지 표기
	
	function msgCheck() {
		var msg = "${msg}";
	
		if (msg === null || msg === "" || msg === undefined) {
			
		} else {	
			alert("로그인 실패하였습니다. 다시 시도해주세요.", msg);
		}
	}
</script>
</body>
</html>