<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HTMLExtender.aspx.cs" Inherits="Ajaxdemo.HTMLExtender" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>


        
<asp:scriptmanager runat="server"></asp:scriptmanager>

        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" CssClass="HTMLEditor"></asp:TextBox>
        
<br />
<ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender1" runat="server" TargetControlID="TextBox1"
    OnClientChange="ContentChangedLabel"
   EnableSanitization="false"
    DisplayPreviewTab="true"
    DisplaySourceTab="true"
   

    
    >
    <Toolbar>
        <ajaxToolkit:Undo />
        <ajaxToolkit:Paste />
        <ajaxToolkit:Copy />
        <ajaxToolkit:Cut />
        <ajaxToolkit:Delete />
        <ajaxToolkit:SelectAll />
        <ajaxToolkit:JustifyFull />
        <ajaxToolkit:JustifyRight />
        <ajaxToolkit:JustifyCenter />
        <ajaxToolkit:JustifyLeft />
        <ajaxToolkit:Undo />
        <ajaxToolkit:Undo />
        <ajaxToolkit:InsertHorizontalRule />
        <ajaxToolkit:HorizontalSeparator />
        <ajaxToolkit:InsertImage />
        <ajaxToolkit:Underline />
        <ajaxToolkit:Bold />
        <ajaxToolkit:BackgroundColorSelector />
        <ajaxToolkit:ForeColorSelector />
        <ajaxToolkit:FontNameSelector />
        <ajaxToolkit:FontSizeSelector />
        <ajaxToolkit:Copy />
    </Toolbar>
        </ajaxToolkit:HtmlEditorExtender>
        <br />
            <asp:Label runat="server" ID="ContentChangedLabel" />
                <br />
        <br />
                <asp:Button runat="server" Text="Submit content" ID="submit" OnClick="submit_Click" />

    
    </div>
    </form>
</body>
</html>
