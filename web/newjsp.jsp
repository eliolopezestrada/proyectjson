<%-- 
    Document   : newjsp
    Created on : 22/02/2022, 06:34:35 PM
    Author     : elio
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
<title>reloj</title>
</head>

<body>

<h2>COLOMBIA</h2>
<%
   response.setIntHeader("Refresh", 5);
   Calendar calendar = new GregorianCalendar();
   String am_pm;
   int hour = calendar.get(Calendar.HOUR);
   int minute = calendar.get(Calendar.MINUTE);
   int second = calendar.get(Calendar.SECOND);
   if(calendar.get(Calendar.AM_PM) == 0)
      am_pm = "AM";
   else
      am_pm = "PM";
   String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
   out.println("La hora es: " + CT + "\n");
%>

</body>
</html>