<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Panel.aspx.vb" Inherits="_Default" %>

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
        .style15
        {
            width: 178px;
        }
        .style16
        {
            width: 78px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
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
                    <center><table style="width: 577px;">
                        <tr>
                            <td align=center>
                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/add_user.png" 
                                    PostBackUrl="~/Usuarios.aspx" />
                                <br />
                                <asp:Label ID="Label1" runat="server" Text="Usuarios"></asp:Label>
                            </td>
                            <td align=center>
                                <asp:ImageButton ID="ImageButton2" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/home.png" 
                                    PostBackUrl="~/laboratorio.aspx" />
                                <br />
                                <asp:Label ID="Label2" runat="server" Text="Laboratorios"></asp:Label>
                            </td>
                            <td align=center>
                                <asp:ImageButton ID="ImageButton3" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/accept_database.png" 
                                    DescriptionUrl="~/Equipos.aspx" PostBackUrl="~/Equipos.aspx" Width="64px" />
                                <br />
                                <asp:Label ID="Label3" runat="server" Text="Equipos"></asp:Label>
                            </td>
                            <td align=center class="style15">
                                <asp:ImageButton ID="ImageButton4" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/delete_home.png" 
                                    PostBackUrl="~/Mantenimiento_Aprobacion.aspx" />
                                <br />
                                <asp:Label ID="Label4" runat="server" Text="Aprobacion Mantenimiento"></asp:Label>
                                <br />
                                </td>
                            <td align=center class="style16">
                                <asp:ImageButton ID="ImageButton5" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/link.png" PostBackUrl="~/M_Logico.aspx" />
                                <br />
                                <asp:Label ID="Label5" runat="server" Text="Logico"></asp:Label>
                            </td>
                            <td align=center>
                                <asp:ImageButton ID="ImageButton6" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/link.png" 
                                    PostBackUrl="~/M_Preventivo.aspx" />
                                <br />
                                <asp:Label ID="Label6" runat="server" Text="Preventivo"></asp:Label>
                            </td>
                        </tr>
                    </table></center>
                </td>
            </tr>
            <tr>
                <td bgcolor="#BD3639" class="style12" align=center>
                    &nbsp;</td>
                <td bgcolor="White" class="style13">
                    Mantenimiento</td>
            </tr>
            <tr>
                <td class="style12" align=center>
                    &nbsp;</td>
                <td class="style11" align=center>
                    <center><table  align=center style="width:240px;">
                        <tr>
                            <td align=center>
                                <asp:ImageButton ID="ImageButton7" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/delete_home.png" 
                                    PostBackUrl="~/Mantenimiento.aspx" />
                                <asp:Label ID="Label7" runat="server" Text="Mantenimiento"></asp:Label>
                                <br />
                                </td>
                            <td align=center>
                                <asp:ImageButton ID="ImageButton8" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/edit_page.png" 
                                    PostBackUrl="~/Reportes.aspx" />
                                <br />
                                <asp:Label ID="Label8" runat="server" Text="Reportes"></asp:Label>
                                &nbsp;
                            </td>
                            <td class="style14" align=center>
                                <asp:ImageButton ID="ImageButton9" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/phone_book_edit.png" 
                                    PostBackUrl="~/Agenda.aspx" />
                                <asp:Label ID="Label9" runat="server" Text="Agenda&nbsp; "></asp:Label>
                            </td>
                        </tr>
                    </table></center>
                </td>
            </tr>
            <tr>
                <td bgcolor="#BF4F55" class="style12" align=center>
                    &nbsp;</td>
                <td bgcolor="White" class="style13">
                    Usuario</td>
            </tr>
            <tr>
                <td class="style12" align=center>
                    &nbsp;</td>
                <td class="style11" align=center>
                   <center><table style="width:248px;">
                        <tr>
                            <td align=center>
                                <asp:ImageButton ID="ImageButton10" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/user_accept.png" 
                                    PostBackUrl="~/Ver_Perfil.aspx" align=center />
                                <br />
                                <asp:Label ID="Label10" runat="server" Text="Perfil"></asp:Label>
                            </td>
                            <td align=center>
                                <asp:ImageButton ID="ImageButton11" runat="server" 
                                    ImageUrl="~/Imagenes/icons/64x64/edit_profile.png" 
                                    PostBackUrl="~/Editar_Perfil.aspx" />
                                <br />
                                <asp:Label ID="Label11" runat="server" Text="Editar"></asp:Label>
                            </td>
                            <td align=center>
                                <asp:ImageButton ID="ImageButton12" runat="server" Height="60px" 
                                    ImageUrl="~/Imagenes/icons/lock.png" Width="60px" 
                                    PostBackUrl="~/Index.aspx" />
                                <br />
                                <asp:Label ID="Label12" runat="server" Text="Desconectar"></asp:Label>
                            </td>
                        </tr>
                    </table></center>
                </td>
            </tr>
            </table>
    </p>
</asp:Content>

