<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SachMoi.ascx.cs" Inherits="BaiTapLon2.UserConTrol.SachMoi" %>
<style type="text/css">
    .auto-style1 {
        width: 69px;
    }
</style>
<asp:Image ID="Image1" runat="server" ImageUrl="~/image/tittle_sachmoi.gif" />
<p class="auto-style1">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BorderColor="White" BorderStyle="None">
        <Columns>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Ten_sach") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/image/muitendo.gif" %>' />
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Ten_sach") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle ForeColor="Blue" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</p>


