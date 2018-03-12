<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxUpdateProgress.aspx.cs" Inherits="Ajaxdemo.AjaxUpdateProgress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
   
        <asp:UpdateProgress runat="server" id="PageUpdateProgress" DisplayAfter="500" DynamicLayout="true" AssociatedUpdatePanelID="Panel">
            <ProgressTemplate>
        
                <asp:Image runat="server" ID="image1" ImageUrl="~/Images/loading.gif" Width="50px" Height="50px" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:UpdatePanel runat="server" id="Panel">
            <ContentTemplate>
            <asp:Label ID="lable1" runat="server" ></asp:Label>
                                <br />
                    <asp:Button runat="server" id="UpdateButton" onclick="UpdateButton_Click" text="Update" />
                <br /><br />
                <asp:Timer ID="timer1" runat="server" Interval="1000" OnTick="timer1_Tick"></asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
