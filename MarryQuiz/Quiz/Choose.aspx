<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Choose.aspx.cs" Inherits="MarryQuiz.Quiz.Choose" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="width: 100%; align-items: center; justify-content: center;">
        <div style="width: 100%; display: flex; align-items: center; justify-content: center;">
            <asp:ImageButton ID="btn_choose" runat="server" ImageUrl="../images/choose.jpg" OnClick="btn_choose_Click" />
        </div>
        <br />
        <div style="width: 100%;display: flex; align-items: center; justify-content: center;">
            <asp:Label runat="server" ID="lbl_list" Text="恭喜獲獎五人名單，請上台獲獎。" Visible="false" BorderStyle="Double" Font-Size="XX-Large"/>
        </div>
         <br />
        <div style="width: 100%; display: flex; align-items: center; justify-content: center;">
            <asp:GridView ID="gv_NameList" runat="server" class="table table-bordered table-condensed table-responsive table-hover" Font-Bold="True" Font-Size="XX-Large" Width="80%" CellPadding="25"></asp:GridView>
        </div>
    </form>
</body>
</html>
