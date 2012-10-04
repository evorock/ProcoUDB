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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;" __designer:mapid="5e7">
        <tr __designer:mapid="5e8">
            <td bgcolor="#BB1818" class="style12" __designer:mapid="5e9">
                            &nbsp;</td>
            <td bgcolor="White" class="style13" __designer:mapid="5ea">
                            Editar Usuarios</td>
        </tr>
        <tr __designer:mapid="5eb">
            <td class="style12" __designer:mapid="5ec">
                            &nbsp;</td>
            <td class="style11" __designer:mapid="5ed">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="id_usuario" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" style="margin-left: 0px">
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
                        <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                        <asp:CommandField ShowEditButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
                    SelectCommand="SELECT * FROM usuarios"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

