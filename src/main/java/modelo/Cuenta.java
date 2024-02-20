package modelo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;
@Entity( name="cuenta")
public class Cuenta implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "nombre")
	private String nombre;
	
	private static List<Cuenta> cuentas = null;
	
	public Cuenta() {
	}
	
	public Cuenta(int id, String nombre) {
		super();
		this.id = id;
		this.nombre = nombre;
	}
	
}
