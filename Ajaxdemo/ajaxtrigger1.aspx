<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajaxtrigger1.aspx.cs" Inherits="Ajaxdemo.ajaxtrigger1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
  
          <ContentTemplate>
                <asp:Label runat="server" id="DateTimeLabel1" />
                <asp:Button runat="server" id="UpdateButton1" onclick="UpdateButton_Click" text="Update single" />               
            </ContentTemplate>
         </asp:UpdatePanel>
        <br /><br />
        <asp:UpdatePanel ID="panel2" runat="server" UpdateMode="Conditional">
            
              <Triggers>
                <asp:AsyncPostBackTrigger controlid="UpdateButton2" EventName="click" />
                </Triggers>
            <ContentTemplate>
                <asp:Label runat="server" id="DateTimeLabel2" />
                <asp:Button runat="server" id="UpdateButton2" onclick="UpdateButton_Click" text="Update both" />
            </ContentTemplate>
        </asp:UpdatePanel>



    </div>
    </form>
</body>
</html>
