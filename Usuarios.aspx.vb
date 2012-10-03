
Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub ImageButton1_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        MultiView1.ActiveViewIndex = 0
    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        MultiView1.ActiveViewIndex = 1
    End Sub

    Protected Sub ImageButton3_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        MultiView1.ActiveViewIndex = 2
    End Sub

    Protected Sub Button3_Click(sender As Object, e As System.EventArgs) Handles Button3.Click
        Dim texto1 As String = "SELECT * FROM usuarios WHERE nombre = '" & TextBox5.Text & "' "
        Dim texto2 As String = "SELECT * FROM usuarios where usuario = '" & TextBox7.Text & "' "

        If texto1.ToString <> TextBox5.Text Then
            MsgBox("Usuario Registrado")
            Response.Redirect("Usuarios.aspx")

        ElseIf texto2.ToString <> TextBox7.Text Then
            MsgBox("Usuario Registrado")
            Response.Redirect("Usuarios.aspx")

        Else
            Dim abc As New libreria
            Dim texto As String = "INSERT INTO usuarios (nombre, direccion,telefono,cargo, nombre_departamento,usuario,pass) VALUES ('" & TextBox5.Text & "','" & TextBox10.Text & "','" & TextBox11.Text & "','" & DropDownList2.Text & "','" & DropDownList3.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "')"
            abc.Inicia()
            abc.envia(texto)
            abc.cerrar()
            Response.Redirect("Panel.aspx")
        End If
    End Sub
End Class


