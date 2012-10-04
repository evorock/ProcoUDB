
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("pase") <> "Om3g@" Then
            Response.Redirect("Index.aspx")
        Else
            If Session("nivel") = "administrador" Then
                ImageButton1.Enabled = True
                ImageButton1.Visible = True
                Label1.Visible = True
                ImageButton2.Enabled = True
                ImageButton2.Visible = True
                Label2.Visible = True
                ImageButton3.Enabled = True
                ImageButton3.Visible = True
                Label3.Visible = True
                ImageButton4.Enabled = True
                ImageButton4.Visible = True
                Label4.Visible = True
                ImageButton5.Enabled = True
                ImageButton5.Visible = True
                Label5.Visible = True
                ImageButton6.Enabled = True
                ImageButton6.Visible = True
                Label6.Visible = True
                ImageButton7.Enabled = True
                ImageButton7.Visible = True
                Label7.Visible = True
                ImageButton8.Enabled = True
                ImageButton8.Visible = True
                Label8.Visible = True
                ImageButton9.Enabled = False
                ImageButton9.Visible = False
                Label9.Visible = True
                ImageButton10.Enabled = True
                ImageButton10.Visible = True
                Label10.Visible = True
                ImageButton11.Enabled = True
                ImageButton11.Visible = True
                Label11.Visible = True
                ImageButton12.Enabled = True
                ImageButton12.Visible = True
                Label12.Visible = True

            End If

            If Session("nivel") = "jefe" Then
                ImageButton1.Enabled = True
                ImageButton1.Visible = True
                ImageButton2.Enabled = True
                ImageButton2.Visible = True
                ImageButton3.Enabled = True
                ImageButton3.Visible = True
                ImageButton4.Enabled = True
                ImageButton4.Visible = True
                ImageButton5.Enabled = True
                ImageButton5.Visible = True
                ImageButton6.Enabled = True
                ImageButton6.Visible = True
                ImageButton7.Enabled = False
                ImageButton7.Visible = False
                Label7.Visible = False
                ImageButton8.Enabled = False
                ImageButton8.Visible = False
                Label8.Visible = False
                ImageButton9.Enabled = False
                ImageButton9.Visible = False
                Label9.Visible = False
                ImageButton10.Enabled = True
                ImageButton10.Visible = True
                ImageButton11.Enabled = True
                ImageButton11.Visible = True
                ImageButton12.Enabled = True
                ImageButton12.Visible = True
            End If

            If Session("nivel") = "empleado" Then
                ImageButton1.Enabled = False
                ImageButton1.Visible = False
                Label1.Visible = False
                ImageButton2.Enabled = False
                ImageButton2.Visible = False
                Label2.Visible = False
                ImageButton3.Enabled = False
                ImageButton3.Visible = False
                Label3.Visible = False
                ImageButton4.Enabled = False
                ImageButton4.Visible = False
                Label4.Visible = False
                ImageButton5.Enabled = False
                ImageButton5.Visible = False
                Label5.Visible = False
                ImageButton6.Enabled = False
                ImageButton6.Visible = False
                Label6.Visible = False
                ImageButton7.Enabled = True
                ImageButton7.Visible = True
                ImageButton8.Enabled = True
                ImageButton8.Visible = True
                ImageButton9.Enabled = False
                ImageButton9.Visible = False
                ImageButton10.Enabled = True
                ImageButton10.Visible = True
                ImageButton11.Enabled = True
                ImageButton11.Visible = True
                ImageButton12.Enabled = True
                ImageButton12.Visible = True
            End If

            If Session("nivel") = "supervisor" Then
                ImageButton1.Enabled = False
                ImageButton1.Visible = False
                Label1.Visible = False
                ImageButton2.Enabled = False
                ImageButton2.Visible = False
                Label2.Visible = False
                ImageButton3.Enabled = False
                ImageButton3.Visible = False
                Label3.Visible = False
                ImageButton4.Enabled = False
                ImageButton4.Visible = False
                Label4.Visible = False
                ImageButton5.Enabled = True
                ImageButton5.Visible = True
                ImageButton6.Enabled = True
                ImageButton6.Visible = True
                ImageButton7.Enabled = False
                ImageButton7.Visible = False
                Label7.Visible = False
                ImageButton8.Enabled = False
                ImageButton8.Visible = False
                Label8.Visible = False
                ImageButton9.Enabled = False
                ImageButton9.Visible = False
                Label9.Visible = False
                ImageButton10.Enabled = True
                ImageButton10.Visible = True
                ImageButton11.Enabled = True
                ImageButton11.Visible = True
                ImageButton12.Enabled = True
                ImageButton12.Visible = True
            End If

        End If
    End Sub
End Class
