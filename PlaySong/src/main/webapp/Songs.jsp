<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://cdn.tailwindcss.com"></script>
<title>PLAYMUSIC.com</title>
</head>
<body class="bg-red-100">
<%	String mvname=request.getParameter("mvname"); 

File fn = new File("D:\\newrelease\\"+mvname);
boolean ex=fn.exists();%>

<div class="bg-red-600">
<h1 class="text-center text-slate-200 text-5xl mx-5 p-5">List Of Songs Of <%=mvname%></h1>
</div>


<div class="flex flex-col items-center my-10">
<%
if(ex==false){
File f= new File("D:\\movies12\\"+mvname);
File files[]=f.listFiles();%>

<img class="w-80 w-94 flex mb-3 justify-center border-4 rounded-md border-red-700" src="image\\<%=mvname%>.jpg"  alt="Error" >
<div class="text-center bg-yellow-100 p-5 text-3xl my-6 font-semibold">
<h1>List Of Songs:</h1>
</div>

<% 
int i=0;
for(File file: files) {
i++;%>
<a class="text-lime-600 font-serif font-semibold text-2xl flex flex-col items-center" href="Play.jsp?mname=<%=mvname%>&sname=<%=file.getName()%>" class="list text-left"><%=i%>.<%=file.getName()%></a><br>
<%}
}
else{
File fnw= new File("D:\\newrelease\\"+mvname);
File filesnw[]=fnw.listFiles();
%>
  
  
 <img class="w-80 w-94 flex mb-3 justify-center border-4 rounded-md border-red-700" src="image\\<%=mvname%>.jpg"  alt="Error" >
 <div class="text-center bg-yellow-100 p-5 text-3xl my-6 font-semibold">
 <h1 class="text-center p-4">List Of Songs:</h1>
 </div>

<% 
int i=0;
for(File filen: filesnw){
i++;%>
<a class="text-lime-600 font-serif font-semibold text-2xl flex flex-col items-center" href="Play.jsp?mname=<%=mvname%>&sname=<%=filen.getName()%>" class="list text-left"><%=i%>.<%=filen.getName()%></a><br>
<%}
}%>

</div>
</body>  
</html>

