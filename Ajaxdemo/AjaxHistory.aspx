<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxHistory.aspx.cs" Inherits="Ajaxdemo.AjaxHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnableHistory="True" OnNavigate="ScriptManager1_Navigate"></asp:ScriptManager>
        <asp:UpdatePanel ID="panel1" runat="server">
            <ContentTemplate>
               
                <asp:DropDownList ID="CheckBoxList1"  AutoPostBack="true" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                    <asp:ListItem>blue</asp:ListItem>
                    <asp:ListItem>red</asp:ListItem>
                    <asp:ListItem>yellow</asp:ListItem>
                    <asp:ListItem>Green</asp:ListItem>
                </asp:DropDownList>
                <br /><br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </ContentTemplate>

        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
