
Partial Class Eliminar_User
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim VarEli As String = Request.QueryString("eli")
        Dim abc As New libreria
        Dim texto As String = "DELETE FROM usuarios WHERE id_usuario =" & VarEli
        abc.Inicia()
        abc.envia(texto)
        Response.Redirect("Panel.aspx")
    End Sub
End Class
