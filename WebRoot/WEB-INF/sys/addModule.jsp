<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addModule.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style type="text/css">
form{ margin:0 auto; width:300px;}
input{margin-top:10px;
font-size:18px;}
</style>
 </head>
  
  <body>
    <form action="${pageContext.request.contextPath}/moduleServlet?item=addModule" method="post">
		模块编号：<input type="text" name="m_id" /><br />
		模块名称：<input type="text" name="m_name" /><br />
		<input type="submit" value="添加" />　　　
		<input type="reset" />
	</form>
  </body>
</html>