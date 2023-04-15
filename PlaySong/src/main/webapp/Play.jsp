<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://cdn.tailwindcss.com"></script>
<title>PLAYMUSIC.com</title>
</head>
<body class="bg-red-100">
<%
String mname=request.getParameter("mname");
String sname=request.getParameter("sname");
%>
<div class="bg-red-600">
<h1 class="text-center text-slate-200 text-5xl mx-5 p-5">----Playing Song----</h1>
</div>

<div class="my-10 flex flex-col items-center  bg-yellow-100">
<audio controls="controls" >
<source src="movies12\<%=mname%>\<%=sname%>" type="audio/mp3">
</audio>
</div>

<h1 class="text-center text-lime-600 font-serif font-semibold p-5 text-3xl my-6 font-semibold">Thank You For Visit</h1>
</body>
</html>