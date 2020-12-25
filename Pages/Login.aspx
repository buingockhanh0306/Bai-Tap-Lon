<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BaiTapLon2.Pages.Login" %>

<%@ Register src="../UserConTrol/FormLogin.ascx" tagname="FormLogin" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;
            <uc1:FormLogin ID="FormLogin1" runat="server" />
        </div>
    </form>
</body>
</html>
