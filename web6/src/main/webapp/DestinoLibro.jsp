<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String ISBN= request.getParameter("ISBN");
String Titulo= request.getParameter ("Titulo");
String Autor= request.getParameter ("Autor");
int Paginas= Integer.parseInt (request.getParameter("Paginas"));
int Idioma= Integer.parseInt(request.getParameter("Idioma"));
String Genero= request.getParameter("Genero");
String DisponibleTexto= request.getParameter("Disponible");
boolean Disponible= Boolean.parseBoolean (DisponibleTexto);

if (Disponible) out.println ("<b>Disponible</b>");
%>
<p>
Título del libro: <%= Titulo %></p>
<p>
ISBN: <%= ISBN %></p>
<p>
El/La autor/a es <%= Autor %></p>
<p>
Tiene <%= Paginas %> páginas</p>
<p>
<%if (Idioma==1){
	out.println("El idioma del libro es inglés");
	}else if (Idioma==2){
	out.println("El idioma del libro es francés");
	}else if (Idioma==3){
	out.println("El idioma del libro es español");
	}else{
	out.println("El idioma del libro es chino");
}%></p>
<p>
Pertenece al género <%= Genero %></p>
<p>


</body>
</html>

