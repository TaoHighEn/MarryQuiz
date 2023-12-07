<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="MarryQuiz.Quiz.Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>婚禮問答</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous" />
    <style>
        .card {
            border-radius: 15px;
        }
        /* 在這裡設定手機畫面的樣式 */
        @media (max-width: 768px) {
            .form-label,
            .form-control {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="width: 100%; margin-top: 10px">
        <h1 class="mb-4">討海恩和陳阿魚的婚禮問答</h1>
        <div class="container">
            <div class="row mt-3">
                <div class="col">
                    <asp:Label class="form-label" ID="Label6" runat="server" Text="您的姓名"></asp:Label>
                    <asp:TextBox class="form-control" ID="txt_name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredField_Name" runat="server" ErrorMessage="姓名必填" ControlToValidate="txt_name" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row form-group m-3 card">
                <div class="mb-3">
                    <asp:Label class="form-control" ID="Label1" runat="server" Text="1. 新郎、新娘是什麼時期認識的？"></asp:Label>
                    <asp:RadioButtonList class="form-control" ID="radio_ans1" runat="server" RepeatDirection="Vertical" CellPadding="10" CellSpacing="10">
                        <asp:ListItem>大學</asp:ListItem>
                        <asp:ListItem>高中</asp:ListItem>
                        <asp:ListItem>碩士</asp:ListItem>
                        <asp:ListItem>當兵</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div class="row form-group m-3 card">
                <div class="mb-3">
                    <asp:Label class="form-control" ID="Label2" runat="server" Text="2. 新郎、新娘登記日期是幾月幾號？"></asp:Label>
                    <asp:RadioButtonList class="form-control" ID="radio_ans2" runat="server" RepeatDirection="Vertical" CellPadding="10" CellSpacing="10">
                        <asp:ListItem>11/11</asp:ListItem>
                        <asp:ListItem>10/28</asp:ListItem>
                        <asp:ListItem>04/17</asp:ListItem>
                        <asp:ListItem>09/20</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div class="row form-group m-3 card">
                <div class="mb-3">
                    <asp:Label class="form-control" ID="Label3" runat="server" Text="3. 新郎、新娘交往了幾年？"></asp:Label>
                    <asp:RadioButtonList class="form-control" ID="radio_ans3" runat="server" RepeatDirection="Vertical" CellPadding="10" CellSpacing="10">
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div class="row form-group m-3 card">
                <div class="mb-3">
                    <asp:Label class="form-control" ID="Label4" runat="server" Text="4. 新郎、新娘第一次見面的縣市？"></asp:Label>
                    <asp:RadioButtonList class="form-control" ID="radio_ans4" runat="server" RepeatDirection="Vertical" CellPadding="10" CellSpacing="10">
                        <asp:ListItem>高雄</asp:ListItem>
                        <asp:ListItem>雲林</asp:ListItem>
                        <asp:ListItem>桃園</asp:ListItem>
                        <asp:ListItem>台北</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div class="row form-group m-3 card">
                <div class="mb-3">
                    <asp:Label class="form-control" ID="Label5" runat="server" Text="5. 新郎、新娘的蜜月國家？"></asp:Label>
                    <asp:RadioButtonList class="form-control" ID="radio_ans5" runat="server" RepeatDirection="Vertical" CellPadding="10" CellSpacing="10">
                        <asp:ListItem>日本</asp:ListItem>
                        <asp:ListItem>德國</asp:ListItem>
                        <asp:ListItem>美國</asp:ListItem>
                        <asp:ListItem>俄羅斯</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div style="margin-bottom: 20px">
                <div class="row mt-3">
                    <div class="col">
                        <asp:Button class="btn btn-primary" ID="btn_submit" runat="server" Text="送出" OnClick="btnSubmit_Click" Width="100%" />
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
</body>
</html>
