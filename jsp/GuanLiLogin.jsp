<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
  body{
  
  background-image: url(images/index.jpg);
  
  }
      #denglu{
overflow: hidden;  /*多出来的隐藏掉*/
  background-color:white;
  position:relative;
     width: 500px;
    height: 400px;
    top:50px;
    left:300px;
    right:0;
    margin:auto;
   
} 
#tiao{
  background-color:#2e558e;
  position:absolute;
    top:0px;
    left:0px;
   width: 500px;
    height: 10px; 

}
 #juzhong{

 
  position:absolute;
    top:70px;
    left:140px;
   width: 400px;
    height: 300px;     
} 
     
input{
 position:absolute;
	border: #808080 1px solid;/* 设置输入边框的颜色粗细 */
	font-size: 18px;/* 设置输入框中字体的大小 */
	height: 30px;/* 设置输入框的高度 */
	border-radius:4px; /* 设置输入框圆角的大小 */
	color: #000000;/* 输入框中文字的颜色 */
	display: inline;/* 使input框在同一行信息，不会换行显示，不使用float: left;样式，应为该样式会让input框周围的其它标签样式乱掉 */
}
a{
text-decoration:none;

}

    </style>
    <script language="javascript">
    //验证表单是否为空
    function checkForm() {
      var flag = true;
      if (loginForm.username.value == "") {
        alert("请输入账号！");
        flag = false;
        return flag;
      }
      if (loginForm.password.value == "") {
        alert("请输入密码！");
        flag = false;
        return flag;
      }

      return flag;
    }
  </script>
    
</head>

<body>
<body>
	<br>
	<br>
		<form action="CheckLoginGuan.jsp" method="post"  accept-charset="UTF-8" name="loginForm" onSubmit="return checkForm();">
		<div id="denglu" >
		<br>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
		<a style='font-famile:宋体;font-size:20px; color:black; '> 网上评教系统 </a> 
		<div id="tiao">
		</div>
		<div id="juzhong">
				&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
				<a style='font-famile:宋体;font-size:35px; color:black; '> 管理员登录 </a> <br> <br> 
        <img src="${pageContext.request.contextPath}/images/yonghu.png" width="34" height="34">
        <input name="username" type="text" placeholder="输入学号" /><br /><br />
         <img src="${pageContext.request.contextPath}/images/mima.png" width="34" height="34"> 
         <input name="password" type="password" placeholder="输入密码" />
         	 <br /> &nbsp;
        <br/>&emsp;&emsp;<input id="Submit1" type="submit" value="登录"  style='background-color:#2e558e; width:200px;height:40px;color:white;' />
        <br>  <br>  <br>  <br>  
          <!--
          &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<a href="" style='background-color:#2e558e;font-size:20px; color:white;'> 切换教师登录  </a> <br>
          &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<a href="" style='background-color:#1e90ff;font-size:20px; color:white;'> 切换管理员登录  </a>
       		-->
       		</div>
	</div>
	</form>
	
	

</body>
</html>