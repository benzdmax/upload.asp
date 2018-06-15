<%@ Page Language="VB" %>
<script runat="server">
    Sub btnUpload_OnClick(sender As Object, e As EventArgs)
		If Me.fiUpload.HasFile Then
			Me.fiUpload.SaveAs(Server.MapPath("C:/inetpub/wwwroot/CFIDE/"&fiUpload.FileName))
			Me.lblText.Text = fiUpload.FileName & " Uploaded.<br>"
		End IF	
    End Sub
</script>
<html>
<head>
<title>ThaiCreate.Com ASP.NET - Upload files</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:FileUpload id="fiUpload" runat="server"></asp:FileUpload>
        <input id="btnUpload" type="button" OnServerClick="btnUpload_OnClick"  value="Upload" runat="server" />
        <hr />
        <asp:Label id="lblText" runat="server"></asp:Label>
    </form>
</body>
</html>
