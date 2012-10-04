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
                            <a href="javascript:history.back()">
                            <img alt="" src="Imagenes/icons/back_2.png" 
                                style="height: 64px; width: 64px;" /></a><center>Back</center></td>
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
                                        <asp:DropDownList ID="DropDownList1" runat="server" 
                                            DataSourceID="SqlDataSource1" DataTextField="nombre_departamento" 
                                            DataValueField="nombre_departamento">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
                                            SelectCommand="SELECT [nombre_departamento] FROM [edificio]">
                                        </asp:SqlDataSource>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr class="style17">
                                    <td class="style29">
                                        Nombre de Laboritorio</td>
                                    <td class="style25">
                                        <asp:DropDownList ID="DropDownList2" runat="server" 
                                            DataSourceID="SqlDataSource2" DataTextField="nombre_laboratorio" 
                                            DataValueField="nombre_laboratorio">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
                                            SelectCommand="SELECT [nombre_laboratorio] FROM [laboratorios] WHERE ([nombre_departamento] = @nombre_departamento)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" Name="nombre_departamento" 
                                                    PropertyName="SelectedValue" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                    <td>
                                        &nbsp;</td>
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
                            Lista de Equipos</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style11">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataKeyNames="nombre_equipo" DataSourceID="SqlDataSource3" 
                                ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="nombre_equipo" HeaderText="nombre_equipo" 
                                        ReadOnly="True" SortExpression="nombre_equipo" />
                                    <asp:BoundField DataField="fabricante" HeaderText="fabricante" 
                                        SortExpression="fabricante" />
                                    <asp:BoundField DataField="tipo_equipo" HeaderText="tipo_equipo" 
                                        SortExpression="tipo_equipo" />
                                    <asp:BoundField DataField="nombre_departamento" 
                                        HeaderText="nombre_departamento" SortExpression="nombre_departamento" />
                                    <asp:BoundField DataField="nombre_laboratorio" HeaderText="nombre_laboratorio" 
                                        SortExpression="nombre_laboratorio" />
                                    <asp:BoundField DataField="espefificacion_tecnica" 
                                        HeaderText="espefificacion_tecnica" SortExpression="espefificacion_tecnica" />
                                    <asp:BoundField DataField="observaciones" HeaderText="observaciones" 
                                        SortExpression="observaciones" />
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
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
                                SelectCommand="SELECT [nombre_equipo], [fabricante], [tipo_equipo], [nombre_departamento], [nombre_laboratorio], [espefificacion_tecnica], [observaciones], [estado] FROM [equipos]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </p>
</asp:Content>

