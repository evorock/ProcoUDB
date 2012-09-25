<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Editar_Perfil.aspx.vb" Inherits="Editar_Perfil" %>

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
        .style25
        {
            width: 150px;
        }
        .style17
        {
            color: #FFFFFF;
        }
        .style24
        {
            width: 121px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;" __designer:mapid="5e7">
        <tr __designer:mapid="5e8">
            <td bgcolor="#BB1818" class="style12" __designer:mapid="5e9">
                            &nbsp;</td>
            <td bgcolor="White" class="style13" __designer:mapid="5ea">
                            Agregar Usuario</td>
        </tr>
        <tr __designer:mapid="5eb">
            <td class="style12" __designer:mapid="5ec">
                            &nbsp;</td>
            <td class="style11" __designer:mapid="5ed">
                <center __designer:mapid="5ee">
                    <table align="center" style="width: 300%;" 
                                    __designer:mapid="5ef">
                        <tr __designer:mapid="5f0">
                            <td class="style18" __designer:mapid="5f1">
                                        Nombre</td>
                            <td class="style25" __designer:mapid="5f2">
                                <asp:TextBox ID="TextBox5" runat="server" style="text-align: left"></asp:TextBox>
                            </td>
                            <td __designer:mapid="5f4">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="TextBox5" ErrorMessage="*Requiere Nombre Completo" 
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr __designer:mapid="5f6">
                            <td class="style18" __designer:mapid="5f7">
                                        Direccion</td>
                            <td class="style25" __designer:mapid="5f8">
                                <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td __designer:mapid="5fa">
                                        &nbsp;</td>
                        </tr>
                        <tr __designer:mapid="5fb">
                            <td class="style18" __designer:mapid="5fc">
                                        Telefono</td>
                            <td class="style25" __designer:mapid="5fd">
                                <asp:TextBox ID="TextBox11" runat="server" MaxLength="9"></asp:TextBox>
                            </td>
                            <td __designer:mapid="5ff">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                            ControlToValidate="TextBox11" ErrorMessage="*Ejemplo (2222-2222)" 
                                            ForeColor="#CC0000" ValidationExpression="\d{4}-\d{4}"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr class="style17" __designer:mapid="601">
                            <td class="style24" __designer:mapid="602">
                                        Cargo</td>
                            <td class="style25" __designer:mapid="603">
                                <asp:DropDownList ID="DropDownList2" runat="server" style="text-align: left">
                                </asp:DropDownList>
                            </td>
                            <td __designer:mapid="605">
                            </td>
                        </tr>
                        <tr class="style17" __designer:mapid="606">
                            <td class="style24" __designer:mapid="607">
                                        Departamento a Administrar</td>
                            <td class="style25" __designer:mapid="608">
                                <asp:TextBox ID="TextBox6" runat="server" style="text-align: left"></asp:TextBox>
                            </td>
                            <td __designer:mapid="60a">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="TextBox6" ErrorMessage="*Nombre del Departamento" 
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr class="style17" __designer:mapid="60c">
                            <td class="style24" __designer:mapid="60d">
                                        Usuario</td>
                            <td class="style25" __designer:mapid="60e">
                                <asp:TextBox ID="TextBox7" runat="server" Height="23px" 
                                            style="text-align: left" Width="113px"></asp:TextBox>
                            </td>
                            <td __designer:mapid="610">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="TextBox7" ErrorMessage="*Requiere de un Usuario" 
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr class="style17" __designer:mapid="612">
                            <td class="style24" __designer:mapid="613">
                                        Password</td>
                            <td class="style25" __designer:mapid="614">
                                <asp:TextBox ID="TextBox8" runat="server" style="text-align: left" 
                                            TextMode="Password"></asp:TextBox>
                            </td>
                            <td __designer:mapid="616">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="TextBox8" ErrorMessage="*Digite una Contrasena" 
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                        &nbsp;</td>
                        </tr>
                        <tr class="style17" __designer:mapid="618">
                            <td class="style24" __designer:mapid="619">
                                        &nbsp;</td>
                            <td class="style25" __designer:mapid="61a">
                                <asp:Button ID="Button3" runat="server" Text="Agregar" />
                                <asp:Button ID="Button4" runat="server" Text="Regresar" />
                            </td>
                        </tr>
                    </table>
            </td>
        </tr>
    </table>
</asp:Content>

