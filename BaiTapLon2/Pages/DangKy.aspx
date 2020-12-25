<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="BaiTapLon2.Pages.DangKy" %>

<%@ Register src="../UserConTrol/FormDangKy.ascx" tagname="FormDangKy" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:FormDangKy ID="FormDangKy1" runat="server" />
        </div>
    </form>
</body>
</html>
