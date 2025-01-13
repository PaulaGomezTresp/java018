package es.cie.repositorio;

import java.util.List;

import es.cie.negocio.Libro;

public interface LibroRepository {

	List<Libro> buscarTodos();

	List<Libro> buscarPorTitulo(String Titulo);

	List<Libro> buscarPorAutor(String Autor);

}