<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="MarryQuiz.Quiz.Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body style="align-content: center">
    <form id="form1" runat="server" style="width: 100%">

        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <asp:Label ID="Label6" runat="server" Text="您的姓名"></asp:Label>
                    <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredField_Name" runat="server" ErrorMessage="姓名必填" ControlToValidate="txt_name" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col-lg-12">
                    <asp:Label ID="Label1" runat="server" Text="1. 新郎、新娘是什麼時期認識的？"></asp:Label>
                    <asp:RadioButtonList ID="radio_ans1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                        <asp:ListItem>大學</asp:ListItem>
                        <asp:ListItem>高中</asp:ListItem>
                        <asp:ListItem>碩士</asp:ListItem>
                        <asp:ListItem>當兵</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="col-lg-12">
                    <asp:Label ID="Label2" runat="server" Text="2. 新郎、新娘登記日期是幾月幾號？"></asp:Label>
                    <asp:RadioButtonList ID="radio_ans2" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                        <asp:ListItem>11/11</asp:ListItem>
                        <asp:ListItem>10/28</asp:ListItem>
                        <asp:ListItem>04/17</asp:ListItem>
                        <asp:ListItem>09/20</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="col-lg-12">
                    <asp:Label ID="Label3" runat="server" Text="3. 新郎、新娘交往了幾年？"></asp:Label>
                    <asp:RadioButtonList ID="radio_ans3" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="col-lg-12">
                    <asp:Label ID="Label4" runat="server" Text="4. 新郎、新娘第一次見面的縣市？"></asp:Label>
                    <asp:RadioButtonList ID="radio_ans4" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                        <asp:ListItem>高雄</asp:ListItem>
                        <asp:ListItem>雲林</asp:ListItem>
                        <asp:ListItem>桃園</asp:ListItem>
                        <asp:ListItem>台北</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="col-lg-12">
                    <asp:Label ID="Label5" runat="server" Text="5. 新郎、新娘的蜜月國家？"></asp:Label>
                    <asp:RadioButtonList ID="radio_ans5" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                        <asp:ListItem>日本</asp:ListItem>
                        <asp:ListItem>德國</asp:ListItem>
                        <asp:ListItem>美國</asp:ListItem>
                        <asp:ListItem>俄羅斯</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
        </div>
        <div>
            <asp:Button ID="btn_submit" runat="server" Text="送出" OnClick="btnSubmit_Click" Width="100%" OnClientClick="" />
        </div>
    </form>
    <script>
        function authcheck()
        {
            var txt = "";
        }
    </script>
</body>
</html>
