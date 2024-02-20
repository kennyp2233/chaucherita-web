<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ingreso</title>
    <link rel="stylesheet" href="css/styleMovimientos.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</head>
<body>
	<!-- nav -->
    <header class="header_pagina_principal">
        <div class="contenedor_derecha">
            <button class="btn-regresar" onclick="(window.location ='index.html')">
                <iconify-icon class="icono-boton" icon="mdi:arrow-left" width="20"></iconify-icon>
            </button>
            <button class="boton boton2 usuario_shortcut">
                <img src="https://picsum.photos/30" alt="imagen de usuario">
                <p>Usuario</p>
            </button>
        </div>

    </header>
    <main class="main_pagina_principal">
        <div class="contenedor_default dash_head">
            <header class="header_contenedor">
                <h3>Banco</h3>
                <button class="boton boton2 color_inactivo_boton">
                    <iconify-icon class="icono" icon="carbon:view-filled" width="18"></iconify-icon>
                </button>
            </header>
            <main class="balance">
                <iconify-icon class="icono" icon="cryptocurrency:usd" style="color: white;" width="32"></iconify-icon>
                <h1>1000.00</h1>
            </main>
        </div>

        <div class="contenedor_form">
            <form action="index.html">
                <label for="ingreso">Dinero a ingresar</label>
                <input id="ingreso" type="number" min="0">
                <label for="categoria">Categoría</label>
                <select name="tipo" id="tipo" class="select-categoria">
                    <option value="0">Seleccione una categoria</option>
                    <option value="1">Comida</option>
                    <option value="2">Transferencia</option>
                    <option value="3">Nómina</option>
                    <option value="4">Universidad</option>
                </select>
                <label for="fecha">Selecciona una fecha:</label>
                <input type="date" id="fecha" name="fecha">
                <label for="">Concepto</label>
                <input type="text" placeholder="Ingrese motivo de ingreso"/>
                <div class="btn-confirmacion">
                    <input type="submit" class="boton boton1" value="Depositar">
                    <input type="submit" class="boton boton-cancelar" value="Cancelar">
                </div>
            </form>
        </div>
    </main>
</body>
</html>