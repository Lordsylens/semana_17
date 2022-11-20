<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registros.aspx.cs" Inherits="tareaprog14.Registros" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Home</title>
    <link rel="stylesheet " href="Style.css" />
    <link rel="shorcut icon" href="images/icono.ico" />
    <script type="text/javascript">
</script>
</head>
<body>
    <nav>
        <div class="logo">
            <h4>Registro</h4>
        </div>
        <ul class="nav-links">
            <a href="login.aspx">Cerrar Sesión</a>
            <a href="login.aspx">Home</a>
            <a href="Registros.aspx">Registro</a>
            <a href="Consultas.aspx">Consultar</a>
        </ul>
        <div class="burger">
            <div class="line1"></div>
            <div class="line2"></div>
            <div class="line3"></div>
        </div>
    </nav>
    <br />
    <br />
    <br />
    <div class="reg">

        <center>
            <h3>Registro de usuarios</h3>
        </center>
        <form id="form2" runat="server">
            <center>
                <b>
                    <asp:Label ID="Label3" Text="" runat="server" /></b><br />
                Código:
            <asp:TextBox ID="id" Text="" runat="server" />
                <br />
                <br />

                Nombre:
            <asp:TextBox ID="nombre" Text="" runat="server" />
                <br />
                <br />

                Usuario:
            <asp:TextBox ID="usuarioreg" Text="" runat="server" />
                <br />
                <br />

                Contraseña:
            <asp:TextBox ID="passwordreg" Text="" runat="server" />
                <br />
                <br />

                Rango:
            <asp:DropDownList ID="ddLista" runat="server" />
                <br />
                <br />

                <asp:Button ID="registrar" Text="Registrar" runat="server" OnClick="registrar_Click" />
                <asp:Label ID="Label2" Text="" runat="server" />
            </center>
        </form>
    </div>
</body>
</html>

