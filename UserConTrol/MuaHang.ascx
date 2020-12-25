<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MuaHang.ascx.cs" Inherits="BaiTapLon2.UserConTrol.MuaHang" %>
<center>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#CC3300" Text="CHÀO MỪNG BẠN ĐẾN VỚI TRANG GIỎ HÀNG"></asp:Label>
    <br />
    <asp:Image ID="Image3" runat="server" Height="74px" ImageUrl="~/image/116-1169537_cart-png-clipart-icon-gi-hng-png.png" />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#009933" Text="Tổng Số Sách: "></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Ms" ForeColor="#333333" GridLines="None" Width="798px">
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="Ms" HeaderText="Mã sách" InsertVisible="False" ReadOnly="True" SortExpression="Ms" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Tensach" HeaderText="Tên sách" SortExpression="Ten_sach" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Dongia" HeaderText="Đơn giá"></asp:BoundField>
            <asp:BoundField DataField="Soluong" HeaderText="Số lượng "></asp:BoundField>
            <asp:BoundField DataField="Thanhtien" HeaderText="Thành tiền"></asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    Tổng số sách:
    <asp:Label ID="lbl_soluong" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#FF9900"></asp:Label>
    <br />
    Tổng tiền:
    <asp:Label ID="lbl_thanhtien" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <asp:Image ID="Image2" runat="server" ImageUrl="~/image/slogan.jpg" Height="91px" Width="217px" />
    <br />
    <asp:Label ID="lblthongbao" runat="server" ForeColor="#FF3300"></asp:Label>
</center>

