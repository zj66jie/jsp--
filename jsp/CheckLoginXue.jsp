<%@ page import="java.sql.*" %>
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>登录判断</title>
</head>
<body>
 
<%
	String username=new String(request.getParameter("username"));
	String password=new String(request.getParameter("password"));
	
//连接数据库操作
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/keshe";
	String usename = "keshe";
	String psw= "root";  
    Connection conn = DriverManager.getConnection(url,usename,psw);//得到连接  
	
	if(conn!=null){
		
		String sql="select * from students where name='"+username+"' and psd='"+ password + "'";
		
	    Statement Stmt=conn.createStatement();
		ResultSet rs=Stmt.executeQuery(sql);
		if(rs.next()){
		
	       out.println("<script language='javascript'>alert('登录成功');window.location.href='XueSheng.jsp?stid="+username+"';</script>");
		}
		else{
			 out.println("<script language='javascript'>alert('登录失败！用户名或密码错误');window.location.href='XueShenLogin.jsp';</script>");
			 
		}
	}
	else{
		out.println("<script language='javascript'>alert('数据库连接失败！');</script>");
		response.sendRedirect("XueShenLogin.jsp");//密码不对返回到登陆
	}
 
%>
 
</body>
</html>
