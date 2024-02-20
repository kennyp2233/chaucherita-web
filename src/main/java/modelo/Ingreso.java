package modelo;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.*;

@Entity(name = "Ingreso")
public class Ingreso extends Movimiento implements Serializable{
	private static final long serialVersionUID = 1L;
	
	
	private Integer id;

	@Column(name = "fecha", nullable = false)
	@Temporal(TemporalType.DATE)
	private Date fecha;

	@Column(name = "concepto", nullable = false, length = 200)
	private String concepto;

	@Column(name = "monto", nullable = false)
	private Double monto;

	public Ingreso() {
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
}
