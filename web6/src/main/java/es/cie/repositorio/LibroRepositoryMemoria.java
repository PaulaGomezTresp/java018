package es.cie.repositorio;

import java.util.ArrayList;
import java.util.List;

import es.cie.negocio.Libro;

public class LibroRepositoryMemoria implements LibroRepository {

	private static List<Libro> lista=new ArrayList<Libro>();
	
	static {
		lista.add(new Libro("9O76T7","Harry Potter","J.K.Rowling",645,"Ficción","Español"));
		lista.add(new Libro("67F89S","Antes de ti","Lucía Ruiz",449,"Romántico","Inglés"));
		lista.add(new Libro("D78E3S","Canciones para Paula","Blue Jeans",658,"Adolescente","Francés"));
		lista.add(new Libro("GU76R9","Cincuenta sombras de Grey","Julio Jimenez",578,"Erótico","Español"));
		lista.add(new Libro("FU76DX","Liberado","Julio Jimenez",564,"Erótico","Francés"));
		lista.add(new Libro("E56RE3","Contando atardeceres","La Vecina Rubia",356,"Romántico","Inglés"));
	}
	
	@Override
	public List<Libro> buscarTodos(){
		return lista;
	}
	
	@Override
	public List<Libro> buscarPorTitulo(String Titulo){
		List<Libro> listaNueva= new ArrayList<Libro>();
		for(Libro l: lista) {
			String tituloLibro= l.getTitulo();
			if (tituloLibro.toLowerCase().contains(Titulo.toLowerCase())) {
				listaNueva.add(l);
			}
		}return listaNueva;
	} 

@Override
public List<Libro> buscarPorAutor(String Autor){
	List<Libro> listaNueva= new ArrayList<Libro>();
	for(Libro l: lista) {
		String autorLibro= l.getAutor();
		if (autorLibro.toLowerCase().contains(Autor.toLowerCase())) {
			listaNueva.add(l);
		}
	}return listaNueva;
} 
}
