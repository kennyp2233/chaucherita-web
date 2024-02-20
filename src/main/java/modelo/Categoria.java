package modelo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;
@Entity(name="categoria")
public class Categoria implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "nombre")
	private String nombre;

	@OneToMany(mappedBy = "categoria", cascade = CascadeType.ALL, orphanRemoval = true)
	private static List<Categoria> categorias = null;
	
	public Categoria() {
	}
	
	public Categoria(int id, String nombre) {
		super();
		this.id = id;
		this.nombre = nombre;

	}

	public Categoria(String nombre) {
		super();
		this.nombre = nombre;
	}

	public static List<Categoria> getCategorias() {
		if (categorias == null) {
			categorias = new ArrayList<Categoria>();
		}
		return categorias;
	}

	public static void setCuentas(List<Categoria> categorias) {
		Categoria.categorias = categorias;
	}

	public void addCategoria(Categoria categoria) {
		getCategorias().add(categoria);
	}

	public void removeCategoria(Categoria categoria) {
		getCategorias().remove(categoria);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;

	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@Override
	public String toString() {
		return "Categoria [id=" + id + ", nombre=" + nombre + "]";
	}


	
}
