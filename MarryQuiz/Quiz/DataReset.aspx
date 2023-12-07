<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataReset.aspx.cs" Inherits="MarryQuiz.Quiz.DataReset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btn_Clear" runat="server" Text="Reset" OnClick="btn_Clear_Click"/>
        </div>
    </form>
</body>
</html>
