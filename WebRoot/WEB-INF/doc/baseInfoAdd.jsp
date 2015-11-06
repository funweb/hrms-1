<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'baseInfoAdd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
function altRows(id){
	if(document.getElementsByTagName){  
		
		var table = document.getElementById(id);  
		var rows = table.getElementsByTagName("tr"); 
		 
		for(i = 0; i < rows.length; i++){          
			if(i % 2 == 0){
				rows[i].className = "evenrowcolor";
			}else{
				rows[i].className = "oddrowcolor";
			}      
		}
	}
}

window.onload=function(){
	altRows('alternatecolor');
}
</script>


<!-- CSS goes in the document HEAD or added to your external stylesheet -->
<style type="text/css">
table.altrowstable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #a9c6c9;
	border-collapse: collapse;
}
table.altrowstable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
table.altrowstable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
.oddrowcolor{
	background-color:#d4e3e5;
}
.evenrowcolor{
	background-color:#c3dde0;
}
</style>
	
  </head>
  
  <body>
    <form action="${pageContext.request.contextPath }/docBaseInfoServlet?item=addInfo" method="post" enctype="multipart/form-data">
    	<table width="50%" height="400px;" align="center" class="altrowstable" id="alternatecolor">
    		<tr>
    			<td colspan="5"><input type="submit" value="提交" >
    			<input type="reset" value="撤销">
    		</tr>
    		<tr>
    			<td>姓名:</td>
    			<td><input type="text" name="e_name" value="" ></td>
    			<td>性别:</td>
    			<td width="40%"><input type="radio" name="gender" value="-1" >男
    				<input type="radio" name="gender" value="0">女
    			</td>
    			<td rowspan="3" width="20%">
    				<input type="file" name="additional" value="pic">
    			</td>
    		</tr>
    		<tr>
    			<td>学历</td>
    			<td>
    			<select name="edu">
    				<option value="1">本科</option>
    				<option value="2">研究生</option>
    				<option value="3">博士生</option>
    			</select></td>
    			<td>学位</td>
    			<td>
    			<select name="degree">
    				<option value="4">学士</option>
    				<option value="5">硕士</option>
    				<option value="6">博士</option>
    			</select>
    			</td>
    		</tr>
    		<tr>
    			<td>部门</td>
    			<td>
    				<select>
    					<option>请选择部门</option>
    				</select>
    			</td>
    			<td>职位</td>
    			<td>
    				<select>
    					<option>请选择职位</option>
    					
    				</select>
    			</td>
    		</tr>
    		<tr>
    			<td>职称</td>
    			<td><input type="text" value="" ></td>
    			<td>人员状态</td>
    			<td>
    				<input type="radio" name="status" value="7">在职
    				<input type="radio" name="status" value="8">兼职
    				<input type="radio" name="status" value="9">离退
    			</td>
    			<td></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>