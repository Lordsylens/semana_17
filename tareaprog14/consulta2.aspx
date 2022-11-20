<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consulta2.aspx.cs" Inherits="tareaprog14.consulta2" %>

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
            <h4>CONSULTAS</h4>
        </div>
        <ul class="nav-links">
            <a href="logout.aspx">Cerrar Sesión</a>
            <a href="Consultas.aspx">Consultar</a>
        </ul>
        <div class="burger">
            <div class="line1"></div>
            <div class="line2"></div>
            <div class="line3"></div>
        </div>
    </nav>
    <br>
    <br>
    <br>
    <div class="log">
        <center>
            <h3>Ver usuarios</h3>
        </center>
        <form id="form4" runat="server">

            <center>
                Consultar:
   
                <asp:Button ID="enviar4" Text="Ver usuarios" runat="server" OnClick="enviar3_Click" /></center>
            <div>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>
                        <asp:GridView ID="GVConsultar2" runat="server" AutoGenerateColumns="False">
                            <Columns>

                                <asp:BoundField HeaderText="Codigo" DataField="Codigo" />
                                <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                                <asp:BoundField HeaderText="Rango" DataField="Rango" />
                            </Columns>
                        </asp:GridView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>


        </form>
    </div>
</body>
</html>
