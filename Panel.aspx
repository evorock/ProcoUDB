﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Panel.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 201px;
        }
        .style12
        {
            width: 2px;
        }
        .style13
        {
            width: 201px;
            color: #CD7E30;
        }
        .style14
        {
            width: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        *Segun el Rango se mostrata la pantalla a cada usuario<br />
        <table style="width:100%;">
            <tr>
                <td bgcolor="#BB1818" class="style12">
                    &nbsp;</td>
                <td bgcolor="White" class="style13">
                    Configuracion</td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style11">
                    <table style="width: 100%;">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/add_user.png" 
                                    PostBackUrl="~/Usuarios.aspx" />
                                <br />
                                Usuarios</td>
                            <td>
                                <asp:ImageButton ID="ImageButton2" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/home.png" 
                                    PostBackUrl="~/laboratorio.aspx" />
                                <br />
                                Laboratorios</td>
                            <td>
                                <asp:ImageButton ID="ImageButton3" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/accept_database.png" />
                                <br />
                                Equipos</td>
                            <td>
                                <asp:ImageButton ID="ImageButton4" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/delete_home.png" />
                                <br />
                                Mantenimiento</td>
                            <td>
                                <asp:ImageButton ID="ImageButton5" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/link.png" />
                                <br />
                                Logico</td>
                            <td>
                                <asp:ImageButton ID="ImageButton6" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/link.png" />
                                <br />
                                Preventivo</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td bgcolor="#BD3639" class="style12">
                    &nbsp;</td>
                <td bgcolor="White" class="style13">
                    Mantenimiento</td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style11">
                    <table style="width:100%;">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton7" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/delete_home.png" />
                                <br />
                                Mantenimiento</td>
                            <td>
                                <asp:ImageButton ID="ImageButton8" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/edit_page.png" />
                                <br />
                                Reportes&nbsp;
                            </td>
                            <td class="style14">
                                <asp:ImageButton ID="ImageButton9" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/phone_book_edit.png" />
                                Agenda&nbsp;
                                <br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td bgcolor="#BF4F55" class="style12">
                    &nbsp;</td>
                <td bgcolor="White" class="style13">
                    Usuario</td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style11">
                    <table style="width:100%;">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton10" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/user_accept.png" />
                                <br />
                                Perfil</td>
                            <td>
                                <asp:ImageButton ID="ImageButton11" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/edit_profile.png" />
                                <br />
                                Editar</td>
                            <td>
                                <asp:ImageButton ID="ImageButton12" runat="server" Height="60px" 
                                    ImageUrl="~/Imagenes/icons/lock.png" Width="60px" />
                                <br />
                                Desconectar</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
