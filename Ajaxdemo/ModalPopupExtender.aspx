<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModalPopupExtender.aspx.cs" Inherits="Ajaxdemo.ModalPopupExtender" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:HyperLink ID="HyperLink1" runat="server" Visible="true" ImageUrl="~/Images/bootstrap1.png" Width="50px" Height="50px">Show Popup Panel</asp:HyperLink>
        
        <asp:Panel ID="Panel1" runat="server">
            <table>
                <tr><td>
                    <input id="Radio3" type="radio" name="radio" /> <label title="StyleA" class="styleA">StyleA</label>
                    
                   </td>

                </tr>
                  <tr><td>
                      <input id="Radio2" type="radio" name="radio" /> <label title="StyleB" class="styleB" >StyleB</label>
                   </td>

                </tr>
                  <tr><td>
<input id="Radio1" type="radio" name="radio" />
                      <label title="StyleC" class="styleC">StyleC</label>
                   </td>

                </tr>
                
                  <tr><td>
  <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                   </td>

                </tr>
                  <tr><td>
 <asp:Button ID="btnUpdate" runat="server" Text="Update" />
                   </td>

                </tr>
            </table>
           
          
        </asp:Panel>

        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" BackgroundCssClass="modalbackground"  DropShadow="true" runat="server" 
            TargetControlID="HyperLink1"  OkControlID="btnUpdate" CancelControlID="btnCancel" PopupControlID="Panel1" >

        </ajaxToolkit:ModalPopupExtender>
   


    </div>
        
    </form>
</body>
</html>
