package es.cie.repositorio;

import java.util.ArrayList;
import java.util.List;

import es.cie.negocio.Libro;

public class LibroRepository {

	private static List<Libro> lista=new ArrayList<Libro>();
	
	static {
		lista.add(new Libro("9O76T7","Harry Potter","J.K.Rowling",645,"Ficción","Español"));
		lista.add(new Libro("67F89S","Antes de ti","Lucía Ruiz",449,"Romántico","Inglés"));
		lista.add(new Libro("D78E3S","Canciones para Paula","Blue Jeans",658,"Adolescente","Francés"));
	}
	
	public List<Libro> buscarTodos(){
		return lista;
	}
}
