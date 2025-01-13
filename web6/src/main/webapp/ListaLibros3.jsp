	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@page import="es.cie.repositorio.*" %>
	<%@page import="es.cie.negocio.Libro" %>
    <%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="Estilo.css">
</head>

<%


LibroRepository repo=new LibroRepositoryMemoria();
String titulo= request.getParameter("Titulo");
String autor= request.getParameter("Autor");

List<Libro> lista=null;

if(titulo!=null){
	lista=repo.buscarPorTitulo(titulo);
}else if(autor!=null){ 
	lista=repo.buscarPorAutor(autor);
}else{	
	lista=repo.buscarTodos();
}
%>

<body>
<form method="get">
Título:<input type="text" name="Titulo"/>
<input type="submit" value="Buscar titulo"/>
</form>

<form method="get">
Autor:<input type="text" name="Autor"/>
<input type="submit" value="Buscar Autor"/>
</form>

<h1> INVENTARIO </h1>
<table>
<caption><b>LISTA DE LIBROS</b></caption>
	<tr>
		<th><b>ISBN</b></th>
		<th><b>Título</b></th>
		<th><b>Autor</b></th>
		<th><b>Páginas</b></th>
		<th><b>Género</b></th>
		<th><b>Idioma</b></th>
	</tr>


<%for (Libro libro:lista){%>

	<tr>
		<td><%=libro.getISBN() %></td>
		<td><%=libro.getTitulo() %></td>
		<td><%=libro.getAutor() %></td>
		<td><%=libro.getPaginas() %></td>
		<td><%=libro.getGenero() %></td>
		<td><%=libro.getIdioma() %></td>
	</tr>	
	

<%}%>
</table>

</body>
</html>