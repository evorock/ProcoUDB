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
                            <a href="javascript:history.back()">
                            <img alt="" src="Imagenes/icons/back_2.png" 
                                style="height: 64px; width: 64px;" /></a><br />
                            <center>Back</center></td>
                        <td class="style26">
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/add_user.png" />
                            <br />
                            <center>Agregar</center></td>
                        <td class="style26">
                            <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/search_user.png" />
                            <br />
                            <center>Buscar</center></td>
                        <td>
                            <asp:ImageButton ID="ImageButton3" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/phone_book_edit.png" />
                            <br />
                           <center> Listado</center></td>
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
                                            <asp:ListItem Value="empleado">Personal</asp:ListItem>
                                            <asp:ListItem Value="jefe">Jefe</asp:ListItem>
                                            <asp:ListItem Value="supervisor">Supervisor</asp:ListItem>
                                            <asp:ListItem Value="administrador">Administrador</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr class="style17">
                                    <td class="style24">
                                        Departamento a Administrar</td>
                                    <td class="style25">
                                        <asp:DropDownList ID="DropDownList3" runat="server" 
                                            DataSourceID="SqlDataSource1" DataTextField="nombre_departamento" 
                                            DataValueField="nombre_departamento">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
                                            SelectCommand="SELECT [nombre_departamento] FROM [edificio]">
                                        </asp:SqlDataSource>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                            ControlToValidate="DropDownList3" ErrorMessage="*Requiere un Dept." 
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
                                        &nbsp;</td>
                                </tr>
                                <tr class="style17">
                                    <td class="style24">
                                        &nbsp;</td>
                                    <td class="style25">
                                        <asp:Button ID="Button3" runat="server" Text="Agregar" />
                                        <a href="javascript:history.back()">
                                        <input id="Regresar" type="button" value="Regresar" /></a>
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
                            <center>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" DataKeyNames="id_usuario" DataSourceID="ObjectDataSource1" 
                                    ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="nombre" HeaderText="nombre" 
                                            SortExpression="nombre" />
                                        <asp:BoundField DataField="direccion" HeaderText="direccion" 
                                            SortExpression="direccion" />
                                        <asp:BoundField DataField="telefono" HeaderText="telefono" 
                                            SortExpression="telefono" />
                                        <asp:BoundField DataField="cargo" HeaderText="cargo" SortExpression="cargo" />
                                        <asp:BoundField DataField="nombre_departamento" 
                                            HeaderText="nombre_departamento" SortExpression="nombre_departamento" />
                                        <asp:BoundField DataField="usuario" HeaderText="usuario" 
                                            SortExpression="usuario" />
                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                                    InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
                                    SelectMethod="GetData" TypeName="controlTableAdapters.usuariosTableAdapter">
                                    <InsertParameters>
                                        <asp:Parameter Name="nombre" Type="String" />
                                        <asp:Parameter Name="direccion" Type="String" />
                                        <asp:Parameter Name="telefono" Type="String" />
                                        <asp:Parameter Name="cargo" Type="String" />
                                        <asp:Parameter Name="nombre_departamento" Type="String" />
                                        <asp:Parameter Name="usuario" Type="String" />
                                        <asp:Parameter Name="pass" Type="String" />
                                        <asp:Parameter Name="foto" Type="String" />
                                    </InsertParameters>
                                </asp:ObjectDataSource>
                            <br />
                        </td>
                    </tr>
                </table></center>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <center><table style="width: 143px; margin-right: 0px;">
                    <tr>
                        <td class="style26">
                            <asp:ImageButton ID="ImageButton9" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/delete_user.png" PostBackUrl="~/user.aspx" />
                            <br />
                            <span class="style17">Eliminar</span></td>
                        <td class="style26">
                            <asp:ImageButton ID="ImageButton10" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/edit_profile.png" 
                                PostBackUrl="~/Editar_Perfil.aspx" />
                            <center class="style17">
                                Editar</center></center>
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </p>
</asp:Content>

