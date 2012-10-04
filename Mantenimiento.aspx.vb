
Partial Class Mantenimiento
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        MultiView1.ActiveViewIndex = 0
    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        MultiView1.ActiveViewIndex = 1
    End Sub

    Protected Sub Button3_Click(sender As Object, e As System.EventArgs) Handles Button3.Click
        Dim texto As String = "SELECT * FROM mantenimiento WHERE fecha = '" & TextBox6.Text & "' "
        If TextBox6.Text = texto.ToString Then
            MsgBox("Fecha de Mantenimiento Registrado")
            Response.Redirect("Mantenimiento.aspx")
        Else
            Dim abc As New libreria
            Dim txt_Mantenimineto As String = "INSERT INTO mantenimiento (nombre_departamento,nombre_laboratorio,nombre, nombre_equipo, nombre_logico, nombre_preventivo,tipo,fecha,hora,estado) values ('" & DropDownList6.Text & "','" & DropDownList7.Text & "','" & DropDownList10.Text & "','" & DropDownList11.Text & "','" & DropDownList13.Text & "','" & DropDownList8.Text & "','" & DropDownList9.Text & "','" & TextBox6.Text & "','" & DropDownList12.Text & "', 'Aprobado')"
            abc.Inicia()
            abc.envia(txt_Mantenimineto)
            abc.cerrar()
            Response.Redirect("Panel.aspx")
        End If
    End Sub
End Class
