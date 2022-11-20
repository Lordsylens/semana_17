<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="tareaprog14.Menu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Home</title>
    <link rel="stylesheet " href="style.css" />
    <link rel="shorcut icon" href="images/icono.ico" />
    <script type="text/javascript">
</script>
</head>
<body>
    <nav>
        <div class="logo">
            <h4>MENÚ</h4>
        </div>
        <ul class="nav-links">
            <a href="logout.aspx">Cerrar Sesión</a>
            <a href="Menu.aspx">Menú</a>
            <a href="Registros.aspx">Registro</a>
            <a href="Consultas.aspx">Consultar</a>

        </ul>
        <div class="burger">
            <div class="line1"></div>
            <div class="line2"></div>
            <div class="line3"></div>
        </div>
    </nav>


</body>
</html>
