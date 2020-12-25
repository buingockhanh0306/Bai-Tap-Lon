<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="BaiTapLon2.Pages.LienHe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 20px;
        }
        .auto-style5 {
            height: 20px;
            width: 50px;
        }
        .auto-style7 {
            width: 50px;
        }
        .auto-style8 {
            color: #FF0000;
            font-size: x-large;
        }
        .auto-style9 {
            color: #0000FF;
        }
    .auto-style10 {
        height: 20px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <span class="auto-style8"><strong>Thông tin liên hệ</strong></span></p>
    <p>
        &nbsp;</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style5">
                    <asp:Image ID="Image1" runat="server" Height="43px" ImageUrl="~/image/icon/DienThoai.png" Width="50px" />
                </td>
                <td class="auto-style10">0981.415.813</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/image/icon/facebookicon.png" Width="50px" />
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://facebook.com/Buikhanhi2k">Bùi Ngọc Khánh</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/image/icon/gmail.png" Width="50px" />
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style9" NavigateUrl="https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcRzDDGQVPRHNXmdnBCDXCLqBvHwJScjjTzJFdvBCFGSSQxjXtfBMvNRCXbXvHHRqdxRXLpdJ">buikhanhi2k@gmail.com</asp:HyperLink>
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
