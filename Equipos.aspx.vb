
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub ImageButton1_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        MultiView1.ActiveViewIndex = 0
    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        MultiView1.ActiveViewIndex = 1
    End Sub

    Protected Sub Button3_Click(sender As Object, e As System.EventArgs) Handles Button3.Click
        Dim texto As String = "SELECT * FROM equipos WHERE nombre_equipo = '" & TextBox5.Text & "' "
        If TextBox5.Text <> texto.ToString Then
            MsgBox("Equipo Registrado")
            Response.Redirect("Equipos.aspx")
        Else
            Dim abc As New libreria
            Dim texto1 As String = "INSERT INTO equipos (nombre_equipo, tipo_equipo, fabricante, nombre_departamento, nombre_laboratorio, espefificacion_tecnica, estado) VALUES ('" & TextBox5.Text & "','" & TextBox12.Text & "','" & TextBox13.Text & "','" & DropDownList1.Text & "','" & DropDownList2.Text & "','" & TextBox16.Text & "','bueno')"
            abc.Inicia()
            abc.envia(texto1)
            abc.cerrar()
            Response.Redirect("Panel.aspx")
        End If
    End Sub
End Class
