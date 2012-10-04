<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Mantenimiento.aspx.vb" Inherits="Mantenimiento" %>

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
        .style26
        {
            width: 70px;
        }
        .style27
        {
            height: 23px;
            width: 109px;
        }
        .style28
        {
            color: white;
        }
        .style29
        {
            height: 23px;
            color: white;
            width: 109px;
        }
        .style30
        {
            height: 23px;
            width: 208px;
        }
        .style31
        {
            width: 208px;
        }
        .style34
        {
            width: 109px;
        }
        .style35
        {
            height: 23px;
            width: 125px;
        }
        .style36
        {
            width: 125px;
        }
        .style37
        {
            width: 25px;
        }
        .style38
        {
            width: 11px;
        }
        .style39
        {
            width: 109px;
            height: 46px;
        }
        .style40
        {
            width: 125px;
            height: 46px;
        }
        .style41
        {
            width: 208px;
            height: 46px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table style="width:100%;">
        <tr>
            <td bgcolor="#BB1818" class="style12">
                &nbsp;</td>
            <td bgcolor="White" class="style13">
                Mantenimiento</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
               <center> <table style="width: 140px; margin-right: 0px;">
                    <tr>
                        <td class="style26">
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/add_to_database.png" />
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
        
    <br />
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="width:100%;">
                <tr>
                    <td bgcolor="#BB1818" class="style37">
                        &nbsp;</td>
                    <td bgcolor="White" class="style13">
                        Programar Mantenimiento</td>
                </tr>
                <tr>
                    <td class="style37">
                        &nbsp;</td>
                    <td class="style11">
                        <table style="width:800px;">
                            <tr>
                                <td class="style29">
                                    nombre_departamento
                                </td>
                                <td class="style35">
                                    <asp:DropDownList ID="DropDownList6" runat="server" 
                                        DataSourceID="SqlDataSource1" DataTextField="nombre_departamento" 
                                        DataValueField="nombre_departamento">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
                                        SelectCommand="SELECT [nombre_departamento] FROM [edificio]">
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style30">
                                    &nbsp;</td>
                            </tr>
                            <tr class="style28">
                                <td class="style27">
                                    &nbsp;nombre_laboratorio
                                </td>
                                <td class="style35">
                                    <asp:DropDownList ID="DropDownList7" runat="server" 
                                        DataSourceID="SqlDataSource2" DataTextField="nombre_laboratorio" 
                                        DataValueField="nombre_laboratorio">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
                                        SelectCommand="SELECT [nombre_laboratorio] FROM [laboratorios]">
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style30">
                                    &nbsp;</td>
                            </tr>
                            <tr class="style28">
                                <td class="style34">
                                    Encargado</td>
                                <td class="style36">
                                    <asp:DropDownList ID="DropDownList10" runat="server" 
                                        DataSourceID="SqlDataSource3" DataTextField="nombre" DataValueField="nombre">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
                                        SelectCommand="SELECT [nombre] FROM [usuarios]"></asp:SqlDataSource>
                                </td>
                                <td class="style31">
                                    &nbsp;</td>
                            </tr>
                            <tr class="style28">
                                <td class="style34">
                                    &nbsp;nombre_equipo
                                </td>
                                <td class="style36">
                                    <asp:DropDownList ID="DropDownList11" runat="server" 
                                        DataSourceID="SqlDataSource4" DataTextField="nombre_equipo" 
                                        DataValueField="nombre_equipo">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
                                        SelectCommand="SELECT [nombre_equipo] FROM [equipos]"></asp:SqlDataSource>
                                </td>
                                <td class="style31">
                                    &nbsp;</td>
                            </tr>
                            <tr class="style28">
                                <td class="style39">
                                    Tipo de Mantenimiento</td>
                                <td class="style40">
                                    <asp:DropDownList ID="DropDownList13" runat="server">
                                        <asp:ListItem Value="logico">Logico</asp:ListItem>
                                        <asp:ListItem Value="preventivo">Preventivo</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="style41">
                                    </td>
                            </tr>
                            <tr class="style28">
                                <td class="style34">
                                    nombre_logico</td>
                                <td class="style36">
                                    <asp:DropDownList ID="DropDownList8" runat="server" Height="16px" 
                                        DataSourceID="SqlDataSource5" DataTextField="nombre_logico" 
                                        DataValueField="nombre_logico">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
                                        SelectCommand="SELECT [nombre_logico] FROM [mantenimiento_logico]">
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style31">
                                    &nbsp;</td>
                            </tr>
                            <tr class="style28">
                                <td class="style34">
                                    &nbsp;nombre_preventivo
                                </td>
                                <td class="style36">
                                    <asp:DropDownList ID="DropDownList9" runat="server" 
                                        DataSourceID="SqlDataSource6" DataTextField="nombre_preventivo" 
                                        DataValueField="nombre_preventivo">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
                                        SelectCommand="SELECT [nombre_preventivo] FROM [mantenimiento_preventivo]">
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style31">
                                    &nbsp;</td>
                            </tr>
                            <tr class="style28">
                                <td class="style34">
                                    fecha</td>
                                <td class="style36">
                                    Ej.:(Año-Mes-Dia)<br />
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="DropDownList12" runat="server">
                                        <asp:ListItem>12:00AM</asp:ListItem>
                                        <asp:ListItem>1:00AM</asp:ListItem>
                                        <asp:ListItem>2:00AM</asp:ListItem>
                                        <asp:ListItem>3:00AM</asp:ListItem>
                                        <asp:ListItem>4:00AM</asp:ListItem>
                                        <asp:ListItem>5:00AM</asp:ListItem>
                                        <asp:ListItem>6:00AM</asp:ListItem>
                                        <asp:ListItem>7:00AM</asp:ListItem>
                                        <asp:ListItem>8:00AM</asp:ListItem>
                                        <asp:ListItem>9:00AM</asp:ListItem>
                                        <asp:ListItem>10:00AM</asp:ListItem>
                                        <asp:ListItem>11:00AM</asp:ListItem>
                                        <asp:ListItem>12:00PM</asp:ListItem>
                                        <asp:ListItem>1:00PM</asp:ListItem>
                                        <asp:ListItem>2:00PM</asp:ListItem>
                                        <asp:ListItem>3:00PM</asp:ListItem>
                                        <asp:ListItem>4:00PM</asp:ListItem>
                                        <asp:ListItem>5:00PM</asp:ListItem>
                                        <asp:ListItem>6:00PM</asp:ListItem>
                                        <asp:ListItem>7:00PM</asp:ListItem>
                                        <asp:ListItem>8:00PM</asp:ListItem>
                                        <asp:ListItem>9:00PM</asp:ListItem>
                                        <asp:ListItem>10:00PM</asp:ListItem>
                                        <asp:ListItem>11:00PM</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="style31">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="TextBox6" ErrorMessage="* Ingrese Fecha" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr class="style28">
                                <td class="style34">
                                    estado</td>
                                <td class="style36">
                                    Pendiente</td>
                                <td class="style31">
                                    &nbsp;</td>
                            </tr>
                            <tr class="style28">
                                <td class="style34">
                                    &nbsp;</td>
                                <td class="style36">
                                    <asp:Button ID="Button3" runat="server" Text="Agregar" />
                                    <asp:Button ID="Button4" runat="server" Text="Regresar" />
                                </td>
                                <td class="style31">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table style="width:800px;">
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width:100%;">
                <tr>
                    <td bgcolor="#BB1818" class="style38">
                        &nbsp;</td>
                    <td bgcolor="White" class="style13">
                        Listado de Programacion
                    </td>
                </tr>
                <tr>
                    <td class="style38">
                        &nbsp;</td>
                    <td class="style11">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="4" DataSourceID="SqlDataSource7" ForeColor="#333333" 
                            GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="nombre_departamento" 
                                    HeaderText="nombre_departamento" SortExpression="nombre_departamento" />
                                <asp:BoundField DataField="nombre_laboratorio" HeaderText="nombre_laboratorio" 
                                    SortExpression="nombre_laboratorio" />
                                <asp:BoundField DataField="nombre" HeaderText="nombre" 
                                    SortExpression="nombre" />
                                <asp:BoundField DataField="nombre_equipo" HeaderText="nombre_equipo" 
                                    SortExpression="nombre_equipo" />
                                <asp:BoundField DataField="nombre_logico" HeaderText="nombre_logico" 
                                    SortExpression="nombre_logico" />
                                <asp:BoundField DataField="nombre_preventivo" HeaderText="nombre_preventivo" 
                                    SortExpression="nombre_preventivo" />
                                <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
                                <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                                <asp:BoundField DataField="hora" HeaderText="hora" SortExpression="hora" />
                                <asp:BoundField DataField="estado" HeaderText="estado" 
                                    SortExpression="estado" />
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
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
                            SelectCommand="SELECT [nombre_departamento], [nombre_laboratorio], [nombre], [nombre_equipo], [nombre_logico], [nombre_preventivo], [tipo], [fecha], [hora], [estado] FROM [mantenimiento]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <br />
        </asp:View>
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:MultiView>
    <br />
    <br />

</asp:Content>

