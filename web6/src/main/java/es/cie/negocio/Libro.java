package es.cie.negocio;

public class Libro {

	private String ISBN;
	private String Titulo;
	private String Autor;
	private int Paginas;
	private String Genero;
	private String Idioma;
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public String getTitulo() {
		return Titulo;
	}
	public void setTitulo(String titulo) {
		Titulo = titulo;
	}
	public String getAutor() {
		return Autor;
	}
	public void setAutor(String autor) {
		Autor = autor;
	}
	public int getPaginas() {
		return Paginas;
	}
	public void setPaginas(int paginas) {
		Paginas = paginas;
	}
		
	public String getGenero() {
		return Genero;
	}
	public void setGenero(String genero) {
		Genero = genero;
	}
	public String getIdioma() {
		return Idioma;
	}
	public void setIdioma(String idioma) {
		Idioma = idioma;
	}
	public Libro(String iSBN, String titulo, String autor, int paginas, String genero, String idioma) {
		super();
		ISBN = iSBN;
		Titulo = titulo;
		Autor = autor;
		Paginas = paginas;
		Genero = genero;
		Idioma = idioma;
	}
	
	
}
