<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>评教答题</title>
<style type="text/css">

#zong{
overflow: hidden;  /*多出来的隐藏掉*/
  background-color:aqua;
  position:relative;
     width: 1300px;
    height: 800px;
    top:0px;
    left:0;
    right:0px;
    margin:auto;
   
} 

#zhong{
  background-color:white;
  position:absolute;
    top:0px;
    left:0px;
   width: 1300px;
    height: 800px; 

}
#zhong1{
  background-color:white;
  position:absolute;
    top:0px;
    left:200px;
   width: 1000px;
    height: 800px; 
    font-size:25px;
    font-family:微软雅黑;
  
}
#zhong1.radio{
   border-radius: 100%;
    border:20px solid #999;
    
   
  
}
input[type="radio"]{
zoom:150%;

}
a{
text-decoration:none;
}
body{
   margin:0;
 
 
}
input[type="submit"]{

	font-size: 25px;/* 设置输入框中字体的大小 */
	
	border-radius:10px; /* 设置输入框圆角的大小 */
	
	
	
}  
    </style>
<script language="javascript">
    //验证表单是否为空
    function checkForm() {
    	var result=false;
    	var r1=document.getElementsByName("T1"); 
    	var r2=document.getElementsByName("T2"); 
    	var r3=document.getElementsByName("T3"); 
    	var r4=document.getElementsByName("T4"); 
    	var r5=document.getElementsByName("T5"); 
    
    	var radio1=false;
    	var radio2=false;
    	var radio3=false;
    	var radio4=false;
    	var radio5=false;
    	
    	for(var i=0;i<r1.length;i++)
    	{
    	    if(r1[i].checked)
    	    {
    	        radio1=r1[i];
    	  
    	    }
    	}
    	for(var i=0;i<r2.length;i++)
    	{
    	    if(r2[i].checked)
    	    {
    	        radio2=r2[i];
    	    }
    	}
    	for(var i=0;i<r3.length;i++)
    	{
    	    if(r3[i].checked)
    	    {
    	        radio3=r3[i];
    	    }
    	}
    	for(var i=0;i<r4.length;i++)
    	{
    	    if(r4[i].checked)
    	    {
    	        radio4=r4[i];
    	    }
    	}
    	for(var i=0;i<r5.length;i++)
    	{
    	    if(r5[i].checked)
    	    {
    	        radio5=r5[i];
    	    }
    	}
    	
    	
    	if (radio1.value==null||radio2.value==null||radio3.value==null||radio4.value==null||radio5.value==null) {
    		alert("提交失败，评价项不能有空哦！");
    		result=false;
    	}else{
    		alert("评教卡提交成功，谢谢您的配合！");
    		result=true;
    	}
    	return result;
    }
  </script>


</head>
<body>
<% String Tid = new String(request.getParameter("tid")); %>
<% String Stid = new String(request.getParameter("stid")); %>


  <div id="zong" > 
    <div id="zhong">
     <div id="zhong1">
     <form action="CheckDaYin.jsp?tid=<%=Tid%>&stid=<%=Stid%>" method="post"  accept-charset="UTF-8"   onSubmit="return checkForm();">
           <p>评教内容：&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;教师工作态度</p>
          <p>评价：&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;              
         <input type="radio" name="T1" value="20">好 &emsp;
	  	<input type="radio" name="T1" value="15">较好 &emsp;
	  	<input type="radio" name="T1" value="10">一般 &emsp;
	  	<input type="radio" name="T1" value="5">不满意                         
	  	 </p>
	  	 
	  	     <p>评教内容：&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;课堂教学水平</p>
          <p>评价：&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;              
         <input type="radio" name="T2" value="20">好 &emsp;
	  	<input type="radio" name="T2" value="15">较好 &emsp;
	  	<input type="radio" name="T2" value="10">一般 &emsp;
	  	<input type="radio" name="T2" value="5">不满意                         
	  	 </p>
	  	 
	  	      <p>评教内容：&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;课堂教学改革</p>
          <p>评价：&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;              
         <input type="radio" name="T3" value="20">好 &emsp;
	  	<input type="radio" name="T3" value="15">较好 &emsp;
	  	<input type="radio" name="T3" value="10">一般 &emsp;
	  	<input type="radio" name="T3" value="5">不满意                         
	  	 </p>
	  	     <p>评教内容：&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;上课专业知识扎实，通俗易懂</p>
          <p>评价：&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;              
         <input type="radio" name="T4" value="20">好 &emsp;
	  	<input type="radio" name="T4" value="15">较好 &emsp;
	  	<input type="radio" name="T4" value="10">一般 &emsp;
	  	<input type="radio" name="T4" value="5">不满意                         
	  	 </p>
	  	 
	  	     <p>评教内容：&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;对学生态度，与学生沟通</p>
          <p>评价：&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;              
         <input type="radio" name="T5" value="20">好 &emsp;
	  	<input type="radio" name="T5" value="15">较好 &emsp;
	  	<input type="radio" name="T5" value="10">一般 &emsp;
	  	<input type="radio" name="T5" value="5">不满意                         
	  	 </p>
	  	 <br>
         <p>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
         <input id="Submit1" type="submit" value="提 交"  style='background-color:#2e558e; width:200px;height:50px;color:white;' />
         </p>
          </form>
     </div>

     </div>
  </div>



</body>
</html>