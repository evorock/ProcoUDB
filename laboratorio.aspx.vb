
Partial Class laboratorio
    Inherits System.Web.UI.Page

    Protected Sub ImageButton1_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        MultiView1.ActiveViewIndex = 0
    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        MultiView1.ActiveViewIndex = 1
    End Sub

    Protected Sub Button3_Click(sender As Object, e As System.EventArgs) Handles Button3.Click
        Dim texto As String = "SELECT * FROM edificio WHERE nombre_departamento = '" & TextBox5.Text & "' "
        If TextBox5.Text = texto.ToString Then
            Dim abc As New libreria
            Dim texto1 As String = "INSERT INTO edificio (nombre_departamento) VALUES ('" & TextBox5.Text & "')"
            abc.Inicia()
            abc.envia(texto1)
            abc.cerrar()
        Else
            Dim texto4 As String = "SELECT * FROM laboratorios WHERE nombre_laboratorio = '" & TextBox12.Text & "' "
            If TextBox12.Text <> texto4.ToString Then
                MsgBox("Laboratorio Registrado")
                Response.Redirect("Panel.aspx")
            Else
                Dim abc As New libreria
                Dim texto1 As String = "INSERT INTO edificio (nombre_departamento) VALUES ('" & TextBox5.Text & "')"
                abc.Inicia()
                abc.envia(texto1)
                abc.cerrar()
                Dim texto2 As String = "INSERT INTO laboratorios (nombre_laboratorio, nombre_departamento) VALUES ('" & TextBox12.Text & "','" & TextBox5.Text & "')"
                abc.Inicia()
                abc.envia(texto2)
                abc.cerrar()
                Response.Redirect("Panel.aspx")
            End If
        End If
    End Sub
End Class
