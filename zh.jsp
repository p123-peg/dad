<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zhu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>明星姓名:${name}</h1>
      <h1>总粉丝的数量:${li}</h1>
    <h1>正常粉丝的数量:${fei}</h1>
    <h1>黑粉的数量:${hei}</h1>
   
    <div>
    <form action="Serlv?flag=select" method="post">
    <input type="text" name="name1">
    <input type="submit">
    </form>
    </div>
    <table>
    <tr>
    <td>ID</td>
    <td>粉丝姓名</td>
    <td>粉丝年龄</td>
    <td>明星ID</td>
    <td>粉丝状态</td>
    </tr>
    <c:forEach var="c" items="${list123}">
    <tr>
    <td>${c.fansid }</td>
    <td>${c.fansname }</td>
    <td>${c.fansage }</td>
    <td>${c.starid }</td>
    <c:if test="${c.status==1 }">
    <td>正常粉丝</td>
    <td><a href="Sfdsf?flag=update&fansid=${c.fansid}&status=${c.status}">拉黑</a></td>
    </c:if>
    <c:if test="${c.status==2 }">
    <td>黑粉</td>
    <td><a href="Sfdsf?flag=update&fansid=${c.fansid}&status=${c.status}">取消拉黑</a></td>
    </c:if>
  
    </tr>
    </c:forEach>
    </table>
    
  </body>
</html>
