<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://cdn.tailwindcss.com"></script>
<title>PLAYMUSIC.com</title>
</head>
<body class="bg-red-100"> <%String msname=request.getParameter("msname"); %>

<div class="bg-red-600">
<h1 class="text-center text-slate-200 text-5xl mx-5 p-5">List Of Movies StartWith <%=msname%></h1>
</div>

<h3 class="text-orange-700 my-5 p-5 text-2xl bg-yellow-100 text-center ">Click The Photo Or The Movie Name</h3>
<div class="grid grid-cols-4 justify-items-center my-10">

<%File f=new File("D:\\movies12");
File files[]=f.listFiles();
  for(File file:files){
	  if(file.getName().startsWith(msname)){ %>
	  
<a class="text-lime-600 font-serif font-semibold text-3xl flex flex-col items-center" href ="Songs.jsp?mvname=<%=file.getName()%>">
<img class="w-80 h-96 flex mb-3 justify-center border-4 rounded-md border-red-700" src="image\\<%=file.getName()%>.jpg" class="img-fluid" alt="Error" >
<br><%=file.getName()%></a>	
   
      <%}
} %>
</div>

</body>
</html>