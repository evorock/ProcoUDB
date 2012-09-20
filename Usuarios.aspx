<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Usuarios.aspx.vb" Inherits="_Default" %>

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
        .style18
        {
            height: 23px;
            color: #FFFFFF;
            width: 121px;
        }
        .style17
        {
            color: #FFFFFF;
        }
        .style21
        {
            width: 251px;
        }
        .style22
        {
            width: 151px;
        }
        .style23
        {
            width: 250px;
        }
        .style24
        {
            width: 121px;
        }
        .style25
        {
            width: 150px;
        }
        .style26
        {
            width: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td bgcolor="#BB1818" class="style12">
                &nbsp;</td>
            <td bgcolor="White" class="style13">
                Usuarios</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
               <center> <table style="width: 210px; margin-right: 0px;">
                    <tr>
                        <td class="style26">
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/add_user.png" PostBackUrl="View1" />
                            <br />
                            Agregar</td>
                        <td class="style26">
                            <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/search_user.png" />
                            <br />
                            Buscar</td>
                        <td>
                            <asp:ImageButton ID="ImageButton3" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/phone_book_edit.png" />
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
                            Agregar Usuario</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style11">
                            <center><table align="center" style="width: 300%;">
                                <tr>
                                    <td class="style18">
                                        Nombre</td>
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
                                    <td class="style18">
                                        Direccion</td>
                                    <td class="style25">
                                        <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        Telefono</td>
                                    <td class="style25">
                                        <asp:TextBox ID="TextBox11" runat="server" MaxLength="9"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                            ControlToValidate="TextBox11" ErrorMessage="*Ejemplo (2222-2222)" 
                                            ForeColor="#CC0000" ValidationExpression="\d{4}-\d{4}"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr class="style17">
                                    <td class="style24">
                                        Cargo</td>
                                    <td class="style25">
                                        <asp:DropDownList ID="DropDownList2" runat="server" style="text-align: left">
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr class="style17">
                                    <td class="style24">
                                        Departamento a Administrar</td>
                                    <td class="style25">
                                        <asp:TextBox ID="TextBox6" runat="server" style="text-align: left"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="TextBox6" ErrorMessage="*Nombre del Departamento" 
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr class="style17">
                                    <td class="style24">
                                        Usuario</td>
                                    <td class="style25">
                                        <asp:TextBox ID="TextBox7" runat="server" Height="23px" 
                                            style="text-align: left" Width="113px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="TextBox7" ErrorMessage="*Requiere de un Usuario" 
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr class="style17">
                                    <td class="style24">
                                        Password</td>
                                    <td class="style25">
                                        <asp:TextBox ID="TextBox8" runat="server" style="text-align: left" 
                                            TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="TextBox8" ErrorMessage="*Digite una Contrasena" 
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                        &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" 
                                            ErrorMessage="*6 Caracteres Min." ForeColor="#CC0000" MaximumValue="50" 
                                            MinimumValue="6"></asp:RangeValidator>
                                    </td>
                                </tr>
                                <tr class="style17">
                                    <td class="style24">
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
                            Buscar Usuario</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style11">
                            &nbsp;<center><table style="width: 431%;">
                                <tr>
                                    <td style="text-align: left">
                                        Nombre de Usuario:&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button6" runat="server" Text="Buscar" />
                                    </td>
                                </tr>
                            </table>
                            <table style="width: 431%;">
                                <tr>
                                    <td bgcolor="#FFCC00" class="style21">
                                        Nombre</td>
                                    <td bgcolor="#FFCC00" class="style22">
                                        Cargo</td>
                                    <td bgcolor="#FFCC00" class="style23">
                                        Dept. Administra</td>
                                    <td bgcolor="#FFCC00">
                                        Accion</td>
                                </tr>
                                <tr>
                                    <td class="style21">
                                        &nbsp;</td>
                                    <td class="style22">
                                        &nbsp;</td>
                                    <td class="style23">
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button7" runat="server" Text="Editar" />
                                        &nbsp;<asp:Button ID="Button8" runat="server" Text="Eliminar" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                </table></center>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td bgcolor="#BB1818" class="style12">
                            &nbsp;</td>
                        <td bgcolor="White" class="style13">
                            Lista de Usuarios</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style11">
                           <center> <table style="width: 431%;">
                                <tr>
                                    <td bgcolor="#FFCC00" class="style21">
                                        Nombre</td>
                                    <td bgcolor="#FFCC00" class="style22">
                                        Cargo</td>
                                    <td bgcolor="#FFCC00" class="style23">
                                        Dept. Administra</td>
                                    <td bgcolor="#FFCC00">
                                        Accion</td>
                                </tr>
                                <tr>
                                    <td class="style21">
                                        &nbsp;</td>
                                    <td class="style22">
                                        &nbsp;</td>
                                    <td class="style23">
                                        &nbsp;</td>
                                    <td>
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

