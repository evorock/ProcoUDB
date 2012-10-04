Partial Class user
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Dim texto As String = "SELECT * FROM usuarios"
        Dim abc As New libreria
        abc.Inicia()
        abc.recibe(texto)
        Response.Write("<table border =1>")

        While abc.reg.Read
            Response.Write("<tr>")
            Response.Write("<td>" & abc.reg("nombre") & "<td>")
            Response.Write("<td>" & abc.reg("direccion") & "<td>")
            Response.Write("<td><a href=Eliminar_User.aspx?eli=" & abc.reg("id_usuario") & ">eliminar</a>")
        End While
    End Sub
End Class