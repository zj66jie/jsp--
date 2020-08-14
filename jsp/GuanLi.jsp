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
  background-color:cornsilk;
  position:absolute;
    top:0px;
    left:200px;
   width: 1100px;
    height: 800px; 

}

a{
text-decoration:none;
}
body{
   margin:0;
  background-color:#f2f7fa;
 
 
}
  
    </style>


</head>
<body>
<% String Stid = new String(request.getParameter("stid")); %>
<%@include file="header.jsp" %>

  <div id="zong" >
        

       <div id="zuo">
           <div id="zuo1">
                <a href="" style='font-famile:黑体;font-size:18px; color:white; '>个人信息：管理员</a><br /><br />
                <a style='font-famile:宋体;font-size:18px; color:white; '>用户名：<%=Stid%></a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao.png " style="vertical-align:-30%;" width="26" height="26" >
                 <a href="GuanLimima.jsp?stid=<%=Stid%>"style='font-famile:宋体;font-size:18px; color:white; '>修改密码</a><br /><br />
                  <img src="${pageContext.request.contextPath}/images/biao.png " style="vertical-align:-30%;" width="26" height="26" >
                <a href="XueShenLogin.jsp" style='font-famile:宋体;font-size:18px; color:white; '>退出系统</a><br /><br />
               <a style='font-famile:宋体;font-size:18px; color:white; '>管理用户</a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao.png " style="vertical-align:-30%;" width="26" height="26" >
               <a href="Guanxueadd.jsp?stid=<%=Stid%>" style='font-size:18px; color:white; '>添加学生</a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao.png " style="vertical-align:-30%;" width="26" height="26" >
               <a href="Guanshiadd.jsp?stid=<%=Stid%>" style='font-famile:宋体;font-size:18px; color:white; '>添加教师</a><br /><br />
                <a style='font-famile:宋体;font-size:18px; color:white; '>查看评教</a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao2.png " style="vertical-align:-30%;" width="26" height="26" >
               <a href="Jiaoscore1.jsp?stid=<%=Stid%>" style='font-size:18px; color:white; '>学生评教</a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao2.png " style="vertical-align:-30%;" width="26" height="26" >
               <a href="Jiaoscore.jsp?stid=<%=Stid%>" style='font-famile:宋体;font-size:18px; color:white; '>教师成绩</a><br /><br />
               
            </div>
        </div>

        <div id="you">
 <img src="${pageContext.request.contextPath}/images/tongzhi.jpg" width="1111" height="806" >

        </div>
          </div>



</body>
</html>