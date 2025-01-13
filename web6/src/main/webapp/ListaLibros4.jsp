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
String tipobusqueda= request.getParameter("tipobusqueda");
String textobusqueda= request.getParameter("textobusqueda");

List<Libro> lista=null;

if (tipobusqueda!=null && textobusqueda!= null){

	if(tipobusqueda.equals("Titulo")){
		lista=repo.buscarPorTitulo(textobusqueda);
	}else if(tipobusqueda.equals("Autor")){ 
		lista=repo.buscarPorAutor(textobusqueda);
	}else{	
		
	}
}else{
	lista=repo.buscarTodos();
}
%>

<body>
<form method="get">
<select name="tipobusqueda">
<option value="Titulo"> Título</option>
<option>Autor</option>
</select>
<input type="text" name="textobusqueda"/>
<input type="submit" value="Buscar"/>
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