<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<style type="text/css">
#header{
overflow: hidden;
position:relative;
    width: 100%;
    height: 120px;

}
 #foot{
 overflow: hidden;
 position:relative;
  top:800px;
   width: 100%;
    height: 43px;  
  }  
</style>
</head>
<body>
<div id="header">
 <img src="${pageContext.request.contextPath}/images/header.jpg"   >
</div>
<div id="foot">
	<img src="${pageContext.request.contextPath}/images/foot.jpg" >
	</div>
</body>
</html>