
Partial Class M_Preventivo
    Inherits System.Web.UI.Page

    Protected Sub ImageButton1_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        MultiView1.ActiveViewIndex = 0
    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        MultiView1.ActiveViewIndex = 1
    End Sub

    Protected Sub Button3_Click(sender As Object, e As System.EventArgs) Handles Button3.Click
        Dim texto As String = "SELECT * FROM mantenimiento_logico WHERE nombre_logico = '" & TextBox5.Text & "' "
        If TextBox5.Text = texto.ToString Then
            MsgBox("Mantenimiento Logico Registrado")
            Response.Redirect("M_Logico.aspx")
        Else
            Dim abc As New libreria
            Dim texto1 As String = "INSERT INTO mantenimiento_logico (nombre_logico,descripcion_0) values ('" & TextBox5.Text & "','" & TextBox6.Text & "')"
            abc.Inicia()
            abc.envia(texto1)
            abc.cerrar()
            Response.Redirect("Panel.aspx")
        End If
    End Sub
End Class
