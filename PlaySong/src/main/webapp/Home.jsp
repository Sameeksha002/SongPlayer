<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PLAYMUSIC.com</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-red-100">

<div class="bg-red-600">
<h1 class="text-center text-slate-200 text-6xl mx-5 p-5">Welcome To PLAYMUSIC.com</h1>
</div>

<h3 class="text-orange-700 my-5 p-5 text-2xl bg-yellow-100 text-center ">Choose The First Letter Of The Movie And Click On It</h3>

<div class="my-5 flex justify-center font-bold">
  <%for(int i=65; i<=90; i++) { %>
        	<a class="bg-green-300 mx-1.5 px-3 py-2 text-2xl text-orange-700 border-double rounded-lg" href="Movies.jsp?msname=<%=(char)i%>"><%=(char)i%></a>
  <%}%>
</div>

<div class="text-red-600">
<h1 class="text-center bg-yellow-100 p-5 text-3xl my-6 font-semibold">----NEW RELEASE----</h1>
</div>

<div class="grid grid-cols-4 justify-items-center">
<%File f=new File("D:\\newrelease");
File files[]=f.listFiles();
  for(File file:files){%>
	  
<a class="text-lime-600 font-serif font-semibold text-2xl flex flex-col items-center" href ="Songs.jsp?mvname=<%=file.getName()%>" >
<img class="w-64 h-72 flex mb-3 justify-center border-4 rounded-md border-red-700" src="image\\<%=file.getName()%>.jpg" class="img-fluid" alt="Error" >
<%=file.getName()%>
</a>	
<%} %>
</div>


</body>
</html>