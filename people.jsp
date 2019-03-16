<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>实验二</title>
</head>
<body bgcolor=yellow><font size =3>
	<%! int count;
		StringBuffer personList;
		public void judge(){
			if(count ==0)
				personList=new StringBuffer();
			}
		public void addperson(String p){
			if(count==0)
				personList.append(p);
			else
				personList.append(","+p);
			count++;
		}
	%>
	<% String name=request.getParameter("name");
		byte bb[]=name.getBytes("gb2312");
		name=new String(bb);
		if(name.length()==0||name.length()>10){
	%>	<jsp:forward page="inputname.jsp"/>
	<% 	}
		judge();
		addperson(name);
	%>
	<br>目前共有<%=count %>人浏览了该页面，他们的名字是：
	<br><%= personList %>
</body>
</html>
