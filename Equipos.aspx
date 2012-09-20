<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Equipos.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 2px;
        }
        .style13
        {
            width: 201px;
            color: #CD7E30;
        }
        .style11
        {
            width: 201px;
            color: #FFFFFF;
        }
        .style17
        {
            color: #FFFFFF;
        }
        .style25
        {
            width: 150px;
        }
        .style26
        {
            width: 70px;
        }
        .style28
        {
            height: 23px;
            color: #FFFFFF;
            width: 165px;
        }
        .style29
        {
            width: 165px;
        }
        .style32
        {
            width: 175px;
        }
        .style33
        {
            width: 130px;
        }
        .style34
        {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td bgcolor="#BB1818" class="style12">
                &nbsp;</td>
            <td bgcolor="White" class="style13">
                Equipos</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
               <center> <table style="width: 140px; margin-right: 0px;">
                    <tr>
                        <td class="style26">
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/add_to_database.png" 
                                PostBackUrl="View1" />
                            <br />
                            Agregar</td>
                        <td class="style26">
                            <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/search_database.png" />
                            <br />
                            Listado</td>
                    </tr>
                </table></center>
            </td>
        </tr>
        </table>
    <p>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td bgcolor="#BB1818" class="style12">
                            &nbsp;</td>
                        <td bgcolor="White" class="style13">
                            Agregar Equipo</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style11">
                            <center><table align="center" style="width: 300%;">
                                <tr>
                                    <td class="style28">
                                        Nombre de Equipo</td>
                                    <td class="style25">
                                        <asp:TextBox ID="TextBox5" runat="server" style="text-align: left"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="TextBox5" ErrorMessage="*Requiere Nombre Completo" 
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style28">
                                        Tipo de Equipo</td>
                                    <td class="style25">
                                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="TextBox12" ErrorMessage="*Requiere Tipo" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style28">
                                        Fabricante</td>
                                    <td class="style25">
                                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="TextBox13" ErrorMessage="*Requiere Nombre de Fabricante" 
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr class="style17">
                                    <td class="style29">
                                        Nombre de Departamento</td>
                                    <td class="style25">
                                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="TextBox14" ErrorMessage="*Requiere Nombre de Departamento" 
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr class="style17">
                                    <td class="style29">
                                        Nombre de Laboritorio</td>
                                    <td class="style25">
                                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                            ControlToValidate="TextBox15" ErrorMessage="*Requiere Nombre de Laboratorio" 
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr class="style17">
                                    <td class="style29">
                                        Especificacion Tecnica</td>
                                    <td class="style25">
                                        <asp:TextBox ID="TextBox16" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                            ControlToValidate="TextBox16" ErrorMessage="*Requiere Especificacion Tecnica" 
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr class="style17">
                                    <td class="style29">
                                        &nbsp;</td>
                                    <td class="style25">
                                        <asp:Button ID="Button3" runat="server" Text="Agregar" />
                                        <asp:Button ID="Button4" runat="server" Text="Regresar" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table></center>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td bgcolor="#BB1818" class="style12">
                            &nbsp;</td>
                        <td bgcolor="White" class="style13">
                            Lista de Equipos</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style11">
                           <center> <table style="width: 431%;">
                                <tr>
                                    <td bgcolor="#FFCC00" class="style32">
                                        Nombre</td>
                                    <td bgcolor="#FFCC00" class="style25">
                                        Departamento</td>
                                    <td bgcolor="#FFCC00" class="style25">
                                        Laboratorio</td>
                                    <td bgcolor="#FFCC00" class="style33">
                                        Estado</td>
                                    <td bgcolor="#FFCC00" class="style34">
                                        Accion</td>
                                </tr>
                                <tr>
                                    <td class="style32">
                                        &nbsp;</td>
                                    <td class="style25">
                                        &nbsp;</td>
                                    <td class="style25">
                                        &nbsp;</td>
                                    <td class="style33">
                                    </td>
                                    <td class="style34">
                                        <asp:Button ID="Button9" runat="server" Text="Editar" />
                                        &nbsp;<asp:Button ID="Button10" runat="server" Text="Eliminar" />
                                    </td>
                                </tr>
                            </table></center>
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </p>
</asp:Content>

