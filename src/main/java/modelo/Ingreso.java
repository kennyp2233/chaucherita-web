package modelo;

import java.io.Serializable;
import java.sql.Date;
import java.util.Objects;

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

	public Ingreso() {
		super(null, null, null);
	}

	public Ingreso(Date fecha, String concepto, Double monto) {
		super(fecha, concepto, monto);
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
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
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("MiChauchertiaWeb");
	EntityManager em = emf.createEntityManager();
	EntityTransaction tx = em.getTransaction();
	try {
		tx.begin();
		em.persist(this);
		tx.commit();
	} catch (RuntimeException e) {
		if (tx.isActive()) {
			tx.rollback();
		}
		throw e;
	} finally {
		em.close();
	}
	}

	@Override
	public String toString() {
		return "Ingreso{" + "id=" + id + ", fecha=" + fecha + ", concepto='" + concepto + '\'' + ", monto=" + monto
				+ '}';
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (!(o instanceof Ingreso))
			return false;

		Ingreso ingreso = (Ingreso) o;

		if (!Objects.equals(id, ingreso.id))
			return false;
		if (!Objects.equals(fecha, ingreso.fecha))
			return false;
		if (!Objects.equals(concepto, ingreso.concepto))
			return false;
		return Objects.equals(monto, ingreso.monto);
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, fecha, concepto, monto);
	}
}
