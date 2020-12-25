<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GioHang.ascx.cs" Inherits="BaiTapLon2.UserConTrol.GioHang1" %>
<!Doctype>
<html>
    <head>
        <title>
        </title>
        <link href="../Style/GioHang.css" rel="stylesheet" />
        <style type="text/css">
            .auto-style1 {
                width: 100%;
                height: 95px;
            }
            .auto-style3 {
                width: 32px;
            }
            .auto-style4 {
                width: 32px;
                height: 45px;
            }
            .auto-style5 {
                height: 45px;
            }
        </style>
    </head>
    <body>
        <div id="GioHang">

            <table class="auto-style1">
                <tr style="border-bottom-style: dotted; border-bottom-width: medium; border-bottom-color: #000000">
                    <td class="auto-style4" style="border-bottom-style: dotted; border-bottom-width: thin; border-bottom-color: #000000">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" ImageUrl="~/image/Sotien.gif" Width="41px" />
                    </td>
                    <td style="border-bottom-style: dotted; border-bottom-width: thin; border-bottom-color: #000000" class="auto-style5">
                        <asp:Label ID="lbSoTien" runat="server"></asp:Label>
                    &nbsp;đồng<br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pages/MuaHang.aspx">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="36px" ImageUrl="~/image/Giohang.gif" Width="37px" />
                    </td>
                    <td>Giỏ hàng:
                        <asp:Label ID="lbGioHang" runat="server"></asp:Label>
&nbsp;cuốn</td>
                </tr>
            </table>

        </div>
    </body>
</html>