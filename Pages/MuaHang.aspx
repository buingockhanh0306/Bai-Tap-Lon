<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="MuaHang.aspx.cs" Inherits="BaiTapLon2.Pages.MuaHang" %>
<%@ Register src="../UserConTrol/MuaHang.ascx" tagname="MuaHang" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <uc1:MuaHang ID="MuaHang1" runat="server" />
</asp:Content>

