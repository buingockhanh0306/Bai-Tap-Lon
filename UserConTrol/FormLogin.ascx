<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FormLogin.ascx.cs" Inherits="BaiTapLon2.UserConTrol.FormLogin" %>
<!Doctype>
<html>
    <head>
        <title></title>
        <style type="text/css">            
            #Login 
            {
                width: 600px;
                height: 250px;
                border-radius: 5px;
                background-image: linear-gradient(#097945, #00ff73);
                text-align: center;
                font-size: 30px;
                color: white;
                margin: 150px auto;
                padding-top: 50px;
                box-shadow: 10px 10px 2px 1px rgba(0, 0, 255, .1);
            }
            .auto-style1 {
                width: 100%;
                margin: 5px;
            }
            td{
                font-size: 16px;
                text-align: left;
                padding: 10px;
            }
            .auto-style3 {
                color: #FF0000;
            }
            .button{
                width: 100px;
                height: 30px;
                background-image: linear-gradient(red, yellow);
                border-radius: 5px;
            }
            .auto-style4 {
                width: 125px;
                font-size: large;
            }
            .auto-style5 {
                color: #000000;
            }
            .auto-style6 {
                text-align: justify;
            }
        </style>
    </head>
    <body>
        <div id="Login" style="vertical-align: top">
            Đăng nhập<br />

            <asp:Label ID="lbThongBao" runat="server" Font-Size="16px" CssClass="auto-style3" ForeColor="Yellow"></asp:Label>

            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Tên người dùng:</td>
                    <td>
                        <asp:TextBox ID="tbUser" runat="server" Width="328px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Mật khẩu:</td>
                    <td>
                        <asp:TextBox ID="tbPass" runat="server" Width="327px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left: 240px" class="auto-style6">
                        <asp:Button CssClass="button" ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Đăng nhập" ForeColor="White" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bạn chưa có tài khoản?<span class="auto-style5"> </span>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style5" ForeColor="Blue" NavigateUrl="~/Pages/DangKy.aspx">Đăng ký</asp:HyperLink>
                    </td>
                </tr>
            </table>

        </div>
    </body>
</html>