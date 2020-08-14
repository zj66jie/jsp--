<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#zong{
overflow: hidden;  /*多出来的隐藏掉*/
  background-color:aqua;
  position:relative;
     width: 1300px;
    height: 800px;
    top:-43px;
    left:0;
    right:0px;
    margin:auto;
   
} 
#zuo{
  background-color:#4d5e70;
  position:absolute;
    top:0px;
    left:0px;
   width: 200px;
    height: 800px; 

}
#zuo1{
  background-color:#4d5e70;
  position:absolute;
    top:50px;
    left:20px;
   width: 200px;
    height:750px; 

}
#you{
  background-color:white;
  position:absolute;
    top:0px;
    left:200px;
   width: 1100px;
    height: 800px; 

}
#you1{
  background-color:white;
  position:absolute;
    top:170px;
    left:250px;
   width: 1100px;
    height: 800px; 
   font-family:方正粗黑宋简体;
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
body{
   margin:0;
 background-color:#f2f7fa;
 
}
  
    </style>
<script language="javascript">
    //验证表单是否为空
    function checkForm() {
      var flag = true;
      if (loginForm.password.value == "") {
    	alert("请输入密码！");
        flag = false;
        return flag;
      }
      if (loginForm.password2.value == "") {
        alert("请确认密码！");
        flag = false;
        return flag;
      }
      if (loginForm.password2.value !== loginForm.password.value) {
          alert("请两次密码一致！");
          flag = false;
          return flag;
        }
      return flag;
    }
  </script>

</head>
<body>
<% String Stid = new String(request.getParameter("stid")); %>
<%@include file="header.jsp" %>

  <div id="zong" >
        

       <div id="zuo">
           <div id="zuo1">
                <a href="" style='font-size:18px; color:white; '>个人信息：管理员</a><br /><br />
                <a style='font-famile:宋体;font-size:18px; color:white; '>用户名：<%=Stid%></a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao.png " style="vertical-align:-30%;" width="26" height="26" >
                 <a href="GuanLimima.jsp?stid=<%=Stid%>" style='font-size:18px; color:white; '>修改密码</a><br /><br />
                  <img src="${pageContext.request.contextPath}/images/biao.png " style="vertical-align:-30%;" width="26" height="26" >
                <a href="XueShenLogin.jsp" style='font-size:18px; color:white; '>退出系统</a><br /><br />
               <a style='font-famile:宋体;font-size:18px; color:white; '>管理用户</a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao.png " style="vertical-align:-30%;" width="26" height="26" >
               <a href="Guanxueadd.jsp?stid=<%=Stid%>" style='font-size:18px; color:white; '>添加学生</a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao.png " style="vertical-align:-30%;" width="26" height="26" >
               <a href="Guanshiadd.jsp?stid=<%=Stid%>" style='font-famile:宋体;font-size:18px; color:#26a491; '>添加教师</a><br /><br />
                <a style='font-famile:宋体;font-size:18px; color:white; '>查看评教</a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao2.png " style="vertical-align:-30%;" width="26" height="26" >
               <a href="Guanxue.jsp?stid=<%=Stid%>" style='font-size:18px; color:white; '>学生评教</a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao2.png " style="vertical-align:-30%;" width="26" height="26" >
               <a href="Guanshi.jsp?stid=<%=Stid%>" style='font-famile:宋体;font-size:18px; color:white; '>教师成绩</a><br /><br />
            </div>
        </div>

        <div id="you">
             <div id="you1">
             <form action="Checkshiadd.jsp?stid=<%=Stid%>" method="post"  accept-charset="UTF-8" name="loginForm" onSubmit="return checkForm();">
                
                &emsp; &emsp;&emsp; &emsp; &emsp;<font color="red" size="5px">
                  用户名： <input name="username" type="text" placeholder="用户名" /></font><br /><br />
                &emsp;&emsp; &emsp;&emsp; &emsp; &emsp;<font color="black" size="5px">
                   密码 ：           </font>
               <input name="password" id="p1" type="password" placeholder="输入密码" /><br /><br />
                &emsp;&emsp; &emsp;&emsp;<font color="black" size="5px">
                   确认密码：          </font>
               <input name="password2" type="password" placeholder="确认密码" />
                 <br/><br/><br/><br/>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                 <input id="Submit1" type="submit" value="修 改" style='background-color:#2e558e; width:200px;height:40px;color:white;' />
                   </form>
             </div>
        </div>
          </div>



</body>
</html>