package modelo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;
@Entity(name="cuenta")
public class Cuenta implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "nombre")
	private String nombre;

	@OneToMany(mappedBy = "cuenta", cascade = CascadeType.ALL, orphanRemoval = true)
	private static List<Cuenta> cuentas = null;
	
	public Cuenta() {
	}
	
	public Cuenta(int id, String nombre) {
		super();
		this.id = id;
		this.nombre = nombre;

	}

	public Cuenta(String nombre) {
		super();
		this.nombre = nombre;
	}

	public static List<Cuenta> getCuentas() {
		if (cuentas == null) {
			cuentas = new ArrayList<Cuenta>();
		}
		return cuentas;
	}

	public static void setCuentas(List<Cuenta> cuentas) {
		Cuenta.cuentas = cuentas;
	}

	public void addCuenta(Cuenta cuenta) {
		getCuentas().add(cuenta);
	}

	public void removeCuenta(Cuenta cuenta) {
		getCuentas().remove(cuenta);
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
		return "Cuenta [id=" + id + ", nombre=" + nombre + "]";
	}


	
}
