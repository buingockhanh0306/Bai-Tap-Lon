<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FormDangKy.ascx.cs" Inherits="BaiTapLon2.UserConTrol.FormDangKy" %>
<!Doctype>
<html>
    <head>
        <title></title>

        <style type="text/css">
            .auto-style3 {
                width: 100%;
                padding-left: 10px;
                
            }
            .auto-style4 {
                width: 72%;
            }
            .auto-style5 {
                width: 157px;
            }
            #dangky
            {                
                width: 800px;
                height: 600px;
                border-radius: 5px;
                background-color: antiquewhite;
                text-align: center;
                font-size: 20px;
                color: #111010;
                margin: 0px auto;
                padding: 50px 50px;
                box-shadow: 10px 10px 2px 1px rgba(0, 0, 255, .1);
                text-align:left;
            }
            .textbox{
                width: 600px;
                height: 30px;
                margin: 10px;                
            }
            .auto-style6 {
                text-align: center;
            }
            .auto-style7 {
                font-size: xx-large;
                color: #0000FF;
            }
            .auto-style8 {
                padding-left: 10px;
                text-align: center;
            }
            .button
            {
                margin-top: 20px;
                width: 100px;
                height: 30px;
                background-image: linear-gradient(#12e96c, #a1eed2);
                border-radius: 5px;
            }
            .auto-style9 {
                text-decoration: underline;
                color: #0000FF;
                font-size: medium;
            }
        </style>

    </head>
    <body>
        <div id="dangky">

            <div class="auto-style6">
                <strong><span class="auto-style7">Đăng ký<br />
                <br />
                </span></strong><br />
            </div>
            <table>
                <tr>
                    <td class="auto-style3">Họ và tên:</td>
                    <td colspan="2">
                        <asp:TextBox CssClass="textbox" ID="tbHoten" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Địa chỉ:</td>
                    <td colspan="2">
                        <asp:TextBox CssClass="textbox" ID="tbDiachi" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Số điện thoại:</td>
                    <td colspan="2">
                        <asp:TextBox CssClass="textbox" ID="tbSdt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Tên đăng nhập:</td>
                    <td colspan="2">
                        <asp:TextBox CssClass="textbox" ID="tbUser" runat="server"></asp:TextBox>
                        <br />
&nbsp;
                        <asp:Label ID="lbThongbao" runat="server" Font-Size="14px" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Mật khẩu:</td>
                    <td colspan="2">
                        <asp:TextBox CssClass="textbox" ID="tbPass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Ngày sinh:</td>
                    <td colspan="2">
                        <asp:TextBox CssClass="textbox" ID="tbNgaysinh" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Giới tính:</td>
                    <td class="auto-style5">
                        &nbsp;
                        <asp:RadioButton ID="rdoNam" runat="server" Checked="True" GroupName="GioiTinh" Text="Nam" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="rdoNu" runat="server" GroupName="GioiTinh" Text="Nữ" />
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Email:</td>
                    <td colspan="2">
                        <asp:TextBox CssClass="textbox" ID="tbEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="3">
                        <asp:Button CssClass="button" ID="Button1" runat="server" Text="Đăng ký" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>

            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style9" NavigateUrl="~/Pages/Login.aspx">Trở về trang Đăng nhập</asp:HyperLink>
            <br />

        </div>
    </body>
</html>