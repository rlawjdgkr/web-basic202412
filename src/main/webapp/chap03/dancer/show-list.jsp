<%@ page import="com.jsp.basic.chap02.Dancer" %>
<%@ page import="java.util.List" %>
<%@ page import="com.jsp.basic.chap02.DancerList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<%
    List<Dancer> dancerList = DancerList.getDancerList();
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>JSP버전 댄서정보 모아보기</h1>
<ul>
    <% for(Dancer d: dancerList) {%>
    <li># 이름: <%=d.getName()%></li>
    <li># 이름: <%=d.getCrewName()%></li>
    <li># 이름: <%=d.getDanceLevel()%></li>
    <li># 이름: <%=d.getGenres()%></li>
    <% }  %>
</ul>
    <a href="/chap03/dancer/register.jsp">다시 댄서 정보 모아보기</a>
</body>
</html>