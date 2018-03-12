<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajaxtimer.aspx.cs" Inherits="Ajaxdemo.ajaxtimer" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true"></asp:ScriptManager>
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            
            <ContentTemplate>

                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="UpdateLabel" OnClick="Button1_Click" />
                 <asp:Timer runat="server" ID="tm1" OnTick="tm1_Tick" Interval="1000"></asp:Timer>
                
            </ContentTemplate>
        </asp:UpdatePanel>
      <asp:UpdatePanel runat="server" ID="panel2">
          <ContentTemplate>

          </ContentTemplate>
      </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
