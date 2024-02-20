package modelo;

import java.util.Date;

public abstract class Movimiento {
    protected Date fecha;
    protected String concepto;
    protected Double monto;

    public Movimiento(Date fecha, String concepto, Double monto) {
        this.fecha = fecha;
        this.concepto = concepto;
        this.monto = monto;
    }
    
}

