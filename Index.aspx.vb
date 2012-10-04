
Partial Class Index_
    Inherits System.Web.UI.Page

    Protected Sub ImageButton1_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Dim obj As New libreria
        Dim texto As String = "SELECT * FROM usuarios WHERE usuario = '" & TextBox1.Text & "' and pass = '" & TextBox2.Text & "'"
        obj.Inicia()
        obj.Obtener(texto)
        If obj.Arreglo.HasRows = True Then
            obj.Arreglo.Read()
            Session("cliente") = obj.Arreglo("Nombre") & ""
            Session("pase") = "Om3g@"
            Session("nivel") = obj.Arreglo("cargo")
            Session("user") = obj.Arreglo("usuario")

            obj.cerrar()
            Response.Redirect("Panel.aspx")
        Else
            MsgBox("Usuario no registrados")

            Response.Redirect("Index.aspx")
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Response.Write(Session.SessionID.ToString())
    End Sub
End Class
