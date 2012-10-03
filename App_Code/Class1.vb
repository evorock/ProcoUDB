Imports System.Data.SqlClient
Imports Microsoft.VisualBasic
Public Class libreria
    Public StrCon As New SqlConnection
    Public Arreglo As SqlDataReader
    Public lista As New DropDownList
    Public reg As SqlDataReader

    Public Sub Inicia()
        StrCon.ConnectionString = ("Data Source=EVOROCK-PC\EVOROCK;Initial Catalog=proyecto;Integrated Security=True")
        Try
            StrCon.Open()
        Catch ex As Exception
            MsgBox("Error de conexion")
        End Try
    End Sub
    Public Sub cerrar()
        StrCon.Close()
    End Sub
    Public Sub Consulta(ByVal StrConsulta As String)
        Dim con As New SqlCommand(StrConsulta, StrCon)
        con.ExecuteNonQuery()
    End Sub
    Public Function Obtener(ByVal StrConsulta As String) As SqlDataReader
        Dim con As New SqlCommand(StrConsulta, StrCon)
        con.ExecuteNonQuery()
        Arreglo = con.ExecuteReader
        Return Arreglo
    End Function
    Public Sub envia(ByVal texto As String)
        Dim con As New SqlCommand(texto, StrCon)
        con.ExecuteNonQuery()
    End Sub
    Public Function recibe(ByVal texto As String) As SqlDataReader
        Dim con As New SqlCommand(texto, StrCon)
        con.ExecuteNonQuery()
        reg = con.ExecuteReader
        Return reg
    End Function
End Class
