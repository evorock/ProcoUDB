<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Reportes.aspx.vb" Inherits="Reportes" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
        <series>
            <asp:Series ChartType="Bar" Name="Series1" XValueMember="tipo" 
                YValueMembers="fecha">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
        SelectCommand="SELECT * FROM [mantenimiento]"></asp:SqlDataSource>
    <br />
    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1">
        <series>
            <asp:Series Name="Series1" XValueMember="nombre_logico" YValueMembers="fecha">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
    <br />
    <br />
    <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource1">
        <series>
            <asp:Series Name="Series1" XValueMember="nombre_preventivo" 
                YValueMembers="fecha">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
    <br />
    <br />
    <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource2">
        <series>
            <asp:Series ChartType="Bubble" Name="Series1" XValueMember="observaciones" 
                YValueMembers="id_equipo" YValuesPerPoint="2">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
        SelectCommand="SELECT * FROM [equipos]"></asp:SqlDataSource>
    <br />
    <asp:Chart ID="Chart5" runat="server" DataSourceID="SqlDataSource2">
        <series>
            <asp:Series ChartType="StepLine" Name="Series1" 
                XValueMember="nombre_laboratorio" YValueMembers="id_equipo">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
    <br />
    <br />
    <asp:Chart ID="Chart6" runat="server" DataSourceID="SqlDataSource3">
        <series>
            <asp:Series ChartType="Pie" Name="Series1" XValueMember="nombre_departamento" 
                YValueMembers="nombre_laboratorio" YValuesPerPoint="2">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
        SelectCommand="SELECT [nombre_laboratorio], [nombre_departamento] FROM [laboratorios]">
    </asp:SqlDataSource>
</asp:Content>

