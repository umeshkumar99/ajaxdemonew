<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="slideshowextender.aspx.cs" Inherits="Ajaxdemo.slideshowextender" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
         <asp:ScriptManager ID="ScriptManager1" runat="server">
               <Services>
                <asp:ServiceReference Path="~/AjaxWebService.asmx"  />
            </Services>
        </asp:ScriptManager>


         &nbsp; &nbsp;<br />
            <br />
            
            <asp:Image ID="Image1" runat="server" CssClass="slideImage" /><br />
            <br />
            
            <asp:Label ID="lblImageDescription" runat="server" /><br />
            <br />
    
    
            <asp:Button ID="Btn_Previous" runat="server" Text="Previous" />
            <asp:Button ID="Btn_Next" runat="server" Text="Next" Width="64px" /><br />
            <br />
            <asp:Button ID="Btn_Play" runat="server" Text="Play" /><br />
            
    

        <ajaxToolkit:SlideShowExtender ID="SlideShowExtender1" runat="server"
            AutoPlay="false" ImageDescriptionLabelID="lblImageDescription"  Loop="true" 
            PreviousButtonID="Btn_Previous" NextButtonID="Btn_Next" StopButtonText="Stop" SlideShowAnimationType="ZoomInOut" 
            SlideShowServiceMethod="GetSlides" SlideShowServicePath="~/AjaxWebService.asmx"
            TargetControlID="Image1" PlayInterval="2000"
            
             />





    </div>
        
    </form>
</body>
</html>
