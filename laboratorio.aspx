<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="laboratorio.aspx.vb" Inherits="laboratorio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 4px;
        }
        .style13
        {
            width: 201px;
            color: #CD7E30;
        }
        .style11
        {
            width: 201px;
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td bgcolor="#BB1818" class="style12">
                &nbsp;</td>
            <td bgcolor="White" class="style13">
                Laboratorios</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
                <center><table style="width: 140px; margin-right: 0px;">
                    <tr>
                        <td>
                            <a href="javascript:history.back()">
                            <img alt="" src="Imagenes/icons/back_2.png" 
                                style="height: 64px; width: 64px;" /></a><center>Back</center></td>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/add_home.png" />
                            <br />Agregar</td>
                        <td>
                            <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/search_home.png" />
                            <br />Listado</td>
                    </tr>
                </table></center>
            </td>
        </tr>
        </table>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td bgcolor="#BB1818" class="style12">
                            &nbsp;</td>
                        <td bgcolor="White" class="style13">
                            Agregar Laboratorio</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style11">
                            <center><table align="center" style="width: 300%;">
                                <tr>
                                    <td class="style18">
                                        Departamento de Laboratorio</td>
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
                                        Nombre de Laboratorio</td>
                                    <td class="style25">
                                        <asp:TextBox ID="TextBox12" runat="server" style="text-align: left"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr class="style17">
                                    <td class="style24">
                                        &nbsp;</td>
                                    <td class="style25">
                                        <asp:Button ID="Button3" runat="server" Text="Agregar" />
                                        <a href="javascript:history.back()">
                                        <input id="Regresar" type="button" value="Regresar" />
                                        </a>
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
                            Lista de Laboratorios</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style11">
                            <asp:ListView ID="ListView1" runat="server" DataKeyNames="nombre_laboratorio" 
                                DataSourceID="SqlDataSource1">
                                <AlternatingItemTemplate>
                                    <span style="background-color: #FFFFFF;color: #284775;">nombre_laboratorio:
                                    <asp:Label ID="nombre_laboratorioLabel" runat="server" 
                                        Text='<%# Eval("nombre_laboratorio") %>' />
                                    <br />
                                    nombre_departamento:
                                    <asp:Label ID="nombre_departamentoLabel" runat="server" 
                                        Text='<%# Eval("nombre_departamento") %>' />
                                    <br />
                                    <br />
                                    </span>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                    <span style="background-color: #999999;">nombre_laboratorio:
                                    <asp:Label ID="nombre_laboratorioLabel1" runat="server" 
                                        Text='<%# Eval("nombre_laboratorio") %>' />
                                    <br />
                                    nombre_departamento:
                                    <asp:TextBox ID="nombre_departamentoTextBox" runat="server" 
                                        Text='<%# Bind("nombre_departamento") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                        Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                        Text="Cancel" />
                                    <br />
                                    <br />
                                    </span>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <span>No data was returned.</span>
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                    <span style="">nombre_laboratorio:
                                    <asp:TextBox ID="nombre_laboratorioTextBox" runat="server" 
                                        Text='<%# Bind("nombre_laboratorio") %>' />
                                    <br />
                                    nombre_departamento:
                                    <asp:TextBox ID="nombre_departamentoTextBox" runat="server" 
                                        Text='<%# Bind("nombre_departamento") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                        Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                        Text="Clear" />
                                    <br />
                                    <br />
                                    </span>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <span style="background-color: #E0FFFF;color: #333333;">nombre_laboratorio:
                                    <asp:Label ID="nombre_laboratorioLabel" runat="server" 
                                        Text='<%# Eval("nombre_laboratorio") %>' />
                                    <br />
                                    nombre_departamento:
                                    <asp:Label ID="nombre_departamentoLabel" runat="server" 
                                        Text='<%# Eval("nombre_departamento") %>' />
                                    <br />
                                    <br />
                                    </span>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <div ID="itemPlaceholderContainer" runat="server" 
                                        style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <span runat="server" id="itemPlaceholder" />
                                    </div>
                                    <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                                    </div>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                                    nombre_laboratorio:
                                    <asp:Label ID="nombre_laboratorioLabel" runat="server" 
                                        Text='<%# Eval("nombre_laboratorio") %>' />
                                    <br />
                                    nombre_departamento:
                                    <asp:Label ID="nombre_departamentoLabel" runat="server" 
                                        Text='<%# Eval("nombre_departamento") %>' />
                                    <br />
                                    <br />
                                    </span>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
                                SelectCommand="SELECT [nombre_laboratorio], [nombre_departamento] FROM [laboratorios]">
                            </asp:SqlDataSource>
                            </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </asp:Content>

