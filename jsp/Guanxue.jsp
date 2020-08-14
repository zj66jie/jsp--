<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
#yous{
  background-color:white;
  position:absolute;
    top:50px;
    left:350px;
   width: 1100px;
    height: 800px; 
　text-align:center;
}
#you1{
  background-color:white;
  position:absolute;
    top:180px;
    left:0px;
   width: 1100px;
    height: 800px; 

}
#you11{
  background-color:#e3e8ee;
  position:absolute;
    top:0px;
    left:0px;
   width: 1100px;
    height: 30px; 

}
#you11x{
  
  position:absolute;
    top:50px;
    left:90px;
   width: 1100px;
    height: 600px; 

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


</head>
<body>
<% String Stid = new String(request.getParameter("stid"));%>

<%@include file="header.jsp" %>
  <div id="zong" >
        

       <div id="zuo">
           <div id="zuo1">
           
           
           
           
                <a href="" style='font-famile:黑体;font-size:18px; color:white; '>个人信息：教师</a><br /><br />
                <a style='font-famile:宋体;font-size:18px; color:white; '>用户名：<%=Stid%></a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao.png " style="vertical-align:-30%;" width="26" height="26" >
                 <a href="jiaoshimima.jsp?stid=<%=Stid%>" style='font-famile:宋体;font-size:18px; color:white; '>修改密码</a><br /><br />
                  <img src="${pageContext.request.contextPath}/images/biao.png " style="vertical-align:-30%;" width="26" height="26" >
                <a href="XueShenLogin.jsp" style='font-famile:宋体;font-size:18px; color:white; '>退出系统</a><br /><br />
              <a style='font-famile:宋体;font-size:18px; color:white; '>管理用户</a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao.png " style="vertical-align:-30%;" width="26" height="26" >
               <a href="Guanxueadd.jsp?stid=<%=Stid%>" style='font-size:18px; color:white; '>添加学生</a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao.png " style="vertical-align:-30%;" width="26" height="26" >
               <a href="Guanshiadd.jsp?stid=<%=Stid%>" style='font-famile:宋体;font-size:18px; color:white; '>添加教师</a><br /><br />
                <a style='font-famile:宋体;font-size:18px; color:white; '>查看评教</a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao2.png " style="vertical-align:-30%;" width="26" height="26" >
               <a href="Guanxue.jsp?stid=<%=Stid%>" style='font-size:18px; color:#26a491; '>学生评教</a><br /><br />
                <img src="${pageContext.request.contextPath}/images/biao2.png " style="vertical-align:-30%;" width="26" height="26" >
               <a href="Guanshi.jsp?stid=<%=Stid%>" style='font-famile:宋体;font-size:18px; color:white; '>教师成绩</a><br /><br />
            </div>
        </div>

        <div id="you">
       
        <div id="yous">
        
         <form action="Guanxuesou.jsp?stid=<%=Stid%>" method="post"  accept-charset="UTF-8" >
          &emsp;&emsp;&emsp;&emsp;
         <font size="5px" >输入学生号</font><br><br>
         <input name="username" type="text" placeholder="学生号" />
         &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
         <input id="Submit1" type="submit" value="搜索" style='background-color:#2e558e; width:100px;height:35px;color:white;'/>
         </form>
       </div>
      
        <div id="you1">
        
        <div id="you11">
        <table>
     <tr>
     <th width=50></th>
     <th width=120>学生</th>
      <th width=120>教师</th>
      <th width=120>课程</th>
      <th width=120>第一题</th>
      <th width=120>第二题</th>
       <th width=120>第三题</th>
        <th width=120>第四题</th>
        <th width=120>第四题</th>
        <th width=120>总分</th>
  
    </tr>
      </table>
     </div>
     <div id="you11x">
        <%
	
//连接数据库操作
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/keshe";
	String usename = "keshe";
	String psw= "root";  
    Connection conn = DriverManager.getConnection(url,usename,psw);//得到连接  
    ResultSet rs=null;
    Statement Stmt=null;
    String sql="select name,tname,kecheng,one,two,three,four,five,score from sjscore ";
		//out.println("sql="+sql);
	    Stmt=conn.createStatement();
		 rs=Stmt.executeQuery(sql);
		//out . print("<img src="${pageContext.request.contextPath}/img/Headerbg.jpg" width="1000" height="215"> ");				


while(rs.next()){
	%>

<table>
<tr >
<td width=112 height=30><%=rs.getString(1)%></td>
<td width=112><%=rs.getString(2)%> </td>
<td width=115><%=rs.getString(3)%></td>
<td width=115><%=rs.getString(4)%> </td>
<td width=115><%=rs.getString(5)%></td>
<td width=113><%=rs.getString(6)%> </td>
<td width=110><%=rs.getString(7)%> </td>
<td width=109><%=rs.getString(8)%> </td>
<td width=0><%=rs.getString(9)%> </td>

</tr>

 </table>

<% 
}

%>

        </div>
           </div>
        </div>  
    </div>



</body>
</html>