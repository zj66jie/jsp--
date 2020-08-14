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
      String Stid = new String(request.getParameter("stid"));
      String Tid = new String(request.getParameter("tid")); 	
      int t1=Integer.parseInt(request.getParameter("T1"));
      int t2=Integer.parseInt(request.getParameter("T2"));
      int t3=Integer.parseInt(request.getParameter("T3"));
      int t4=Integer.parseInt(request.getParameter("T4"));
      int t5=Integer.parseInt(request.getParameter("T5"));
      /*
      String t2 = new String(request.getParameter("T2"));
      String t3 = new String(request.getParameter("T3"));
      String t4 = new String(request.getParameter("T4"));
      String t5 = new String(request.getParameter("T5"));
      */
      int score=0;
       switch(t1)
        {
        case 20 :
        	score+=20;

          break;
        case 15 :
        	score+=15;

            break;
        case 10 :
        	score+=10;

            break;
        case 5 :
        	score+=5;
            break;
                      
        }
       switch(t2)
       {
       case 20 :
       	score+=20;

         break;
       case 15 :
       	score+=15;
     
           break;
       case 10 :
       	score+=10;
      
           break;
       case 5 :
       	score+=5;
       
           break;
                     
       }
       switch(t3)
       {
       case 20 :
       	score+=20;
     
         break;
       case 15 :
       	score+=15;
        
           break;
       case 10 :
       	score+=10;
    
           break;
       case 5 :
       	score+=5;
     
           break;
                     
       }
       switch(t4)
       {
       case 20 :
       	score+=20;
  
         break;
       case 15 :
       	score+=15;
   
           break;
       case 10 :
       	score+=10;

           break;
       case 5 :
       	score+=5;
   
           break;
                     
       }
       switch(t5)
       {
       case 20 :
       	score+=20;

         break;
       case 15 :
       	score+=15;
 
           break;
       case 10 :
       	score+=10;

           break;
       case 5 :
       	score+=5;

           break;
                     
       }

        
     	  

    	  
   
      
      
      
 
//连接数据库操作
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/keshe";
	String usename = "keshe";
	String psw= "root";  
    Connection conn = DriverManager.getConnection(url,usename,psw);//得到连接  
	
	if(conn!=null){
		     ResultSet teas=null;
		     Statement Stmt=null;
				String sql="select xingming,kecheng from teacherke where tname='"+Tid+"'and sname='"+Stid+"'";
				//out.println("sql="+sql);
			    Stmt=conn.createStatement();
			    teas=Stmt.executeQuery(sql);
		 while(teas.next())
		 {
			 String tname=teas.getString(1);
			 String tkecheng=teas.getString(2);
			 
		 
		  PreparedStatement tmt = conn.prepareStatement("Insert into score(tname,kecheng,tscore) values('" +Tid+ "','" +tkecheng+ "','" +score+ "')");  
		  int rst = tmt.executeUpdate();
		 
		  /*
          if (rst != 0){  
               out.println("<script language='javascript'>alert('密码修改成功！');window.location.href='XueSheng.jsp?stid="+Stid+"';</script>");    
          }
		  else{
			 out.println("<script language='javascript'>alert('登录失败！用户名或密码错误');window.location.href='XueShenLogin.jsp';</script>");
			 
		     }
		  */
		  PreparedStatement ss = conn.prepareStatement("Insert into sjscore(name,tname,xingming,kecheng,one,two,three,four,five,score) values('" +Stid+ "','" +Tid+ "','" +tname+ "','" +tkecheng+ "','" +t1+ "','" +t2+ "','" +t3+ "','" +t4+ "','" +t5+ "','" +score+ "')");  
		  int rs = ss.executeUpdate();
		  
		  PreparedStatement ts = conn.prepareStatement("Insert into jscore(tname,kecheng,one,two,three,four,five) values('" +Tid+ "','" +tkecheng+ "','" +t1+ "','" +t2+ "','" +t3+ "','" +t4+ "','" +t5+ "')");  
		  int rs1 = ts.executeUpdate();  
		  if (rs1 != 0){  
              out.println("<script language='javascript'>alert('评教成功！');window.location.href='XueSheng.jsp?stid="+Stid+"';</script>");    
         }
		  else{
			 out.println("<script language='javascript'>alert('登录失败！用户名或密码错误');window.location.href='XueShenLogin.jsp';</script>");
			 
		     }
		  
		 }
          
          
	}
	else{
		out.println("<script language='javascript'>alert('数据库连接失败！');</script>");
		response.sendRedirect("XueShenLogin.jsp");//密码不对返回到登陆
	}

 
%>

</body>
</html>