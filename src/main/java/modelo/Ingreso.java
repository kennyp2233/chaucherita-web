package modelo;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.*;

@Entity(name = "Ingreso")
public class Ingreso extends Movimiento implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "fecha", nullable = false)
	private Date fecha;

	@Column(name = "concepto", nullable = false, length = 200)
	private String concepto;

	@Column(name = "monto", nullable = false)
	private Double monto;


	public Ingreso(Date fecha, String concepto, Double monto) {
		super(fecha, concepto, monto);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getConcepto() {
		return concepto;
	}

	public void setConcepto(String concepto) {
		this.concepto = concepto;
	}

	public Double getMonto() {
		return monto;
	}

	public void setMonto(Double monto) {
		this.monto = monto;
	}

	// Método save específico para Ingreso
	public void save() {
		// Implementación del método save para Ingreso
		// Esta implementación debe ser proporcionada según la lógica de negocio y el
		// manejo de persistencia específico
	}
}
