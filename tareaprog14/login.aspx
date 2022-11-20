<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="tareaprog14.login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Home</title>
    <link rel ="stylesheet " href="Style.css" />
    <link rel="shorcut icon" href="images/icono.ico"/>
</head>
<body>
    <nav>
        <div class="logo">
            <h4>HOME</h4>
        </div>
        <ul class="nav-links">
            <a href="login.aspx">Home</a>
        </ul>
        <div class="burger">
            <div class="line1"></div>
            <div class="line2"></div>
            <div class="line3"></div>
        </div>
    </nav>
    <br> <br> <br>
    <div class="log">
        <center>
            <h3>
                <font color="White">iniciar sesion
            </h3>
        </center>
        <form id="form1" runat="server">
            <center>
                usuario:
                <asp:TextBox id="usuario" Text="" runat="server" />
                <br /><br />

                contraseña:
                <asp:TextBox id="password" TextMode="Password" runat="server" />
                <br /><br />
                <asp:Button id="enviar" Text="ingresar" runat="server" OnClick="enviar_Click" />
            </center>
            <asp:Label id="Label1" Text="" runat="server" />
        </form>
    </div>
</body>
</html>
