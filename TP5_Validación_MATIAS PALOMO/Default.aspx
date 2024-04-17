<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP5_Validación_MATIAS_PALOMO._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <h1>
            Trabajo de validación de Datos:
        </h1>
        <section class="row" aria-labelledby="aspnetTitle">
            <p>Escuela&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txtb_Escuela" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtb_Escuela" ErrorMessage="Ingrese un nombre de escuela válido." ValidationExpression="^[a-zA-Z]+$" ForeColor="#CC3300"></asp:RegularExpressionValidator>
            </p>
            <p>Cantidad de Docentes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtb_Docentes" runat="server"></asp:TextBox>
                &nbsp; &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtb_Docentes" ErrorMessage="Ingrese una cantidad de docente válida." ValidationExpression="^\d+$" ForeColor="#CC3300"></asp:RegularExpressionValidator>
            </p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <p>
                    Fecha Apertura&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtb_Fecha" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtb_Fecha" ErrorMessage="Ingrese una fecha válida." ForeColor="#CC3300" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/\d{4}$"></asp:RegularExpressionValidator>
                </p>
                <p>
                    E-Mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="txtb_Mail" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtb_Mail" ErrorMessage="Ingrese un mail válido." ForeColor="#CC3300" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator>
                </p>
                <p>
                    <asp:Button ID="Button1" runat="server" Text="Enviar" OnClick="Button1_Click" />
                </p>
            </section>
        </div>
        
    </main>

</asp:Content>
