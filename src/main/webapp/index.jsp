<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Chauchera</title>
    <link rel="stylesheet" href="estilos/style.css">
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>

</head>

<body>
    <!-- nav -->
    <header class="header_pagina_principal">
        <button class="boton boton2 usuario_shortcut">
            <img src="https://picsum.photos/30" alt="imagen de usuario">
            <p>Usuario</p>
        </button>
    </header>
    <!-- dashboard de cartera digital -->
    <main class="main_pagina_principal">
        <div class="contenedor_default dash_head">
            <header class="header_contenedor">
                <h3>Balance Total</h3>
                <button class="boton boton2 color_inactivo_boton">
                    <iconify-icon class="icono" icon="carbon:view-filled" width="18"></iconify-icon>
                </button>
            </header>
            <main class="balance">
                <iconify-icon class="icono" icon="cryptocurrency:usd" style="color: white;" width="32"></iconify-icon>
                <h1>3000.00</h1>
            </main>

            <footer class="botones_transacciones">
                <button class="boton boton1" onclick="(window.location ='ingreso.html')">
                    <iconify-icon icon="ph:arrow-down-bold" width="18"></iconify-icon>
                    <span class="texto_boton">Depositar</span>
                </button>
                <button class="boton boton2 color_inactivo_boton" onclick="(window.location ='egreso.html')">
                    <iconify-icon icon="ph:arrow-up-bold" width="18"></iconify-icon>
                    <span class="texto_boton">Retirar</span>
                </button>
                <button class="boton boton2 color_inactivo_boton" onclick="(window.location ='transferencia.html')">
                    <iconify-icon icon="mingcute:transfer-fill" width="18"></iconify-icon>
                    <span class="texto_boton">Transferir</span>
                </button>
            </footer>

        </div>

        <div class="contenedor-resumen">
            <div class="contenedor_default">
                <!--Cuentas-->
                <header class="header_contenedor">
                    <h3>Cuentas</h3>
                    <button class="boton boton1" onclick="(window.location ='agregarCuenta.html')">
                        <iconify-icon icon="mingcute:add-fill" width="18"></iconify-icon>
                        <p>Agregar cuenta</p>
                    </button>
                </header>
                <main class="cuentas">
                    <button class="boton cuenta" onclick="(window.location ='cuenta_banco.html')">
                        <div class=" cuenta_icono">
                            <iconify-icon class="icono" icon="mdi:bank" width="32"></iconify-icon>
                        </div>
                        <div class="cuenta_info">
                            <h4>Banco</h4>
                            <p>500.00</p>
                        </div>
                    </button>
                    <button class="boton cuenta" onclick="(window.location ='cuenta_efectivo.html')">
                        <div class="cuenta_icono">
                            <iconify-icon class="icono" icon="mdi:wallet" width="32"></iconify-icon>
                        </div>
                        <div class="cuenta_info">
                            <h4>Efectivo</h4>
                            <p>50.00</p>
                        </div>
                    </button>
                    <button class="boton cuenta" onclick="(window.location ='cuenta_tarjeta.html')">
                        <div class="cuenta_icono">
                            <iconify-icon class="icono" icon="mdi:credit-card" width="32"></iconify-icon>
                        </div>
                        <div class="cuenta_info">
                            <h4>Tarjeta</h4>
                            <p>200.00</p>
                        </div>
                    </button>
                </main>

            </div>



            <div class="contenedor_default">
                <!--Clasificacion de retiros-->
                <header class="header_contenedor">

                    <h3>Resumen por categoria</h3>
                    <button class="boton boton1">
                        <iconify-icon icon="mdi:filter-variant" width="18"></iconify-icon>
                        <p>Filtrar</p>
                    </button>
                </header>

                <main class="clasificacion">
                    <button class="boton clasificacion_item">
                        <div class="clasificacion_icono">
                            <iconify-icon class="icono" icon="mdi:food" width="32"></iconify-icon>
                        </div>
                        <div class="clasificacion_info">
                            <h4>Comida</h4>
                            <p>-30.00</p>
                        </div>
                    </button>

                    <button class="boton clasificacion_item">
                        <div class="clasificacion_icono">
                            <iconify-icon class="icono" icon="mdi:transfer" width="32"></iconify-icon>
                        </div>
                        <div class="clasificacion_info">
                            <h4>Transferencia</h4>
                            <p>0.00</p>
                        </div>
                    </button>

                    <button class="boton clasificacion_item">
                        <div class="clasificacion_icono">
                            <iconify-icon class="icono" icon="mdi:briefcase" width="32"></iconify-icon>
                        </div>
                        <div class="clasificacion_info">
                            <h4>Nomina</h4>
                            <p>1000.00</p>
                        </div>
                    </button>


                    <button class="boton clasificacion_item">
                        <div class="clasificacion_icono">
                            <iconify-icon class="icono" icon="mdi:school" width="32"></iconify-icon>
                        </div>
                        <div class="clasificacion_info">
                            <h4>Universidad</h4>
                            <p>-35.00</p>
                        </div>
                    </button>
                </main>
            </div>

            <div class="contenedor_default grid_abajo">
                <header class="header_contenedor">
                    <h3>Transacciones Recientes</h3>
                    
                </header>
                <main id="transacciones" class="mostrar">
                    <div class="transaccion">
                        <div class="transaccion_icono">
                            <iconify-icon class="icono deposito_color" icon="ph:arrow-down-bold"
                                width="18"></iconify-icon>
                        </div>
                        <div class="id_transaccion">001</div>
                        <div class="transaccion_info">
                            <h4>Deposito</h4>
                            <p>10/10/2020</p>
                        </div>

                        <div class="cuenta">
                            <div class="cuenta_icono">
                                <iconify-icon class="icono" icon="mdi:bank" width="20"></iconify-icon>
                            </div>
                            <div class="cuenta_info">
                                <p>Banco</p>
                            </div>
                        </div>

                        <div class="concepto">
                            <h4>Concepto</h4>
                            <p>Pago de nómina de mi trabajo</p>
                        </div>

                        <div class="transaccion_monto">
                            <h4>1000.00</h4>
                        </div>
                    </div>

                    <div class="transaccion">
                        <div class="transaccion_icono">
                            <iconify-icon class="icono retiro_color" icon="ph:arrow-up-bold" width="18"></iconify-icon>
                        </div>
                        <div class="id_transaccion">002</div>
                        <div class="transaccion_info">
                            <h4>Retiro</h4>
                            <p>10/10/2020</p>
                        </div>

                        <div class="cuenta">
                            <div class="cuenta_icono">
                                <iconify-icon class="icono" icon="mdi:wallet" width="20"></iconify-icon>
                            </div>
                            <div class="cuenta_info">
                                <p>Efectivo</p>
                            </div>
                        </div>

                        <div class="concepto">
                            <h4>Concepto</h4>
                            <p>Libro "Contabilidad básica"</p>
                        </div>

                        <div class="transaccion_monto">
                            <h4>1000.00</h4>
                        </div>
                    </div>

                    <div class="transaccion">
                        <div class="transaccion_icono">
                            <iconify-icon class="icono retiro_color" icon="ph:arrow-up-bold" width="18"></iconify-icon>
                        </div>
                        <div class="id_transaccion">003</div>
                        <div class="transaccion_info">
                            <h4>Retiro</h4>
                            <p>10/10/2020</p>
                        </div>

                        <div class="cuenta">
                            <div class="cuenta_icono">
                                <iconify-icon class="icono" icon="mdi:wallet" width="20"></iconify-icon>
                            </div>
                            <div class="cuenta_info">
                                <p>Tarjeta</p>
                            </div>
                        </div>

                        <div class="concepto">
                            <h4>Concepto</h4>
                            <p>Traspaso entre cuentas</p>
                        </div>

                        <div class="transaccion_monto">
                            <h4>1000.00</h4>
                        </div>
                    </div>

                    <div class="transaccion">
                        <div class="transaccion_icono">
                            <iconify-icon class="icono deposito_color" icon="ph:arrow-down-bold"
                                width="18"></iconify-icon>
                        </div>
                        <div class="id_transaccion">004</div>
                        <div class="transaccion_info">
                            <h4>Deposito</h4>
                            <p>10/10/2020</p>
                        </div>

                        <div class="cuenta">
                            <div class="cuenta_icono">
                                <iconify-icon class="icono" icon="mdi:bank" width="20"></iconify-icon>
                            </div>
                            <div class="cuenta_info">
                                <p>Banco</p>
                            </div>
                        </div>

                        <div class="concepto">
                            <h4>Concepto</h4>
                            <p>Pago de matricula universidad</p>
                        </div>

                        <div class="transaccion_monto">
                            <h4>1000.00</h4>
                        </div>
                    </div>

                    <div class="transaccion">
                        <div class="transaccion_icono">
                            <iconify-icon class="icono deposito_color" icon="ph:arrow-down-bold"
                                width="18"></iconify-icon>
                        </div>
                        <div class="id_transaccion">005</div>
                        <div class="transaccion_info">
                            <h4>Deposito</h4>
                            <p>10/10/2020</p>
                        </div>

                        <div class="cuenta">
                            <div class="cuenta_icono">
                                <iconify-icon class="icono" icon="mdi:bank" width="20"></iconify-icon>
                            </div>
                            <div class="cuenta_info">
                                <p>Banco</p>
                            </div>
                        </div>

                        <div class="concepto">
                            <h4>Concepto</h4>
                            <p>Pago de alimento de perro</p>
                        </div>

                        <div class="transaccion_monto">
                            <h4>1000.00</h4>
                        </div>
                    </div>

                    <!--Responsive-->
                    <div class="transaccion_responsive">
                        <div class="boton boton1">
                            <p class="id_transaccion">ID: 001</p>
                        </div>

                        <div class="transaccion_info">
                            <h4>Tipo transaccion:</h4>
                            <div>
                                <div class="transaccion_icono">
                                    <iconify-icon class="icono deposito_color" icon="ph:arrow-down-bold"
                                        width="18"></iconify-icon>
                                </div>
                                <p>Deposito</p>
                            </div>
                        </div>

                        <div class="transaccion_fecha">
                            <h4>Fecha:</h4>
                            <p>10/10/2020</p>
                        </div>

                        <div class="cuenta">
                            <h4>Cuenta:</h4>
                            <div>
                                <div class="cuenta_icono">
                                    <iconify-icon class="icono" icon="mdi:bank" width="20"></iconify-icon>
                                </div>
                                <div class="cuenta_info">
                                    <p>Banco</p>
                                </div>
                            </div>

                        </div>

                        <div class="transaccion_monto">
                            <h4>Valor:</h4>
                            <p>1000.00</p>
                        </div>
                    </div>

                    <div class="transaccion_responsive">
                        <div class="boton boton1">
                            <p class="id_transaccion">ID: 002</p>
                        </div>

                        <div class="transaccion_info">
                            <h4>Tipo transaccion:</h4>
                            <div>
                                <div class="transaccion_icono">
                                    <iconify-icon class="icono retiro_color" icon="ph:arrow-up-bold"
                                        width="18"></iconify-icon>
                                </div>
                                <p>Retiro</p>
                            </div>
                        </div>

                        <div class="transaccion_fecha">
                            <h4>Fecha:</h4>
                            <p>10/10/2020</p>
                        </div>

                        <div class="cuenta">
                            <h4>Cuenta:</h4>
                            <div>
                                <div class="cuenta_icono">
                                    <iconify-icon class="icono" icon="mdi:wallet" width="20"></iconify-icon>
                                </div>
                                <div class="cuenta_info">
                                    <p>Efectivo</p>
                                </div>
                            </div>

                        </div>

                        <div class="transaccion_monto">
                            <h4>Valor:</h4>
                            <p>1000.00</p>
                        </div>
                    </div>

                    <div class="transaccion_responsive">
                        <div class="boton boton1">
                            <p class="id_transaccion">ID: 001</p>
                        </div>

                        <div class="transaccion_info">
                            <h4>Tipo transaccion:</h4>
                            <div>
                                <div class="transaccion_icono">
                                    <iconify-icon class="icono deposito_color" icon="ph:arrow-down-bold"
                                        width="18"></iconify-icon>
                                </div>
                                <p>Deposito</p>
                            </div>
                        </div>

                        <div class="transaccion_fecha">
                            <h4>Fecha:</h4>
                            <p>10/10/2020</p>
                        </div>

                        <div class="cuenta">
                            <h4>Cuenta:</h4>
                            <div>
                                <div class="cuenta_icono">
                                    <iconify-icon class="icono" icon="mdi:bank" width="20"></iconify-icon>
                                </div>
                                <div class="cuenta_info">
                                    <p>Banco</p>
                                </div>
                            </div>

                        </div>

                        <div class="transaccion_monto">
                            <h4>Valor:</h4>
                            <p>1000.00</p>
                        </div>
                    </div>

                    <div class="transaccion_responsive">
                        <div class="boton boton1">
                            <p class="id_transaccion">ID: 001</p>
                        </div>

                        <div class="transaccion_info">
                            <h4>Tipo transaccion:</h4>
                            <div>
                                <div class="transaccion_icono">
                                    <iconify-icon class="icono deposito_color" icon="ph:arrow-down-bold"
                                        width="18"></iconify-icon>
                                </div>
                                <p>Deposito</p>
                            </div>
                        </div>

                        <div class="transaccion_fecha">
                            <h4>Fecha:</h4>
                            <p>10/10/2020</p>
                        </div>

                        <div class="cuenta">
                            <h4>Cuenta:</h4>
                            <div>
                                <div class="cuenta_icono">
                                    <iconify-icon class="icono" icon="mdi:bank" width="20"></iconify-icon>
                                </div>
                                <div class="cuenta_info">
                                    <p>Banco</p>
                                </div>
                            </div>

                        </div>

                        <div class="transaccion_monto">
                            <h4>Valor:</h4>
                            <p>1000.00</p>
                        </div>
                    </div>
                </main>
            </div>
        </div>
    </main>
</body>

</html>