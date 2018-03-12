<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoExtender.aspx.cs" Inherits="Ajaxdemo.AutoExtender" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
    
          <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
            <Services>
                
                <asp:ServiceReference Path="~/AjaxWebService.asmx"  />
            </Services>
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
        <table><tr><td>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <p>
                    Enter student Name:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <ajaxToolkit:AutoCompleteExtender TargetControlID="TextBox2" ID="AutoCompleteExtender2"  ServicePath="~/AjaxWebService.asmx" ServiceMethod="GetStudentName" runat="server" MinimumPrefixLength="3" EnableCaching="true" CompletionSetCount="3" >

            </ajaxToolkit:AutoCompleteExtender>
                        </p>
                    <p>
                    Enter Course Name:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <ajaxToolkit:AutoCompleteExtender TargetControlID="TextBox1" ID="AutoCompleteExtender1"  ServicePath="~/AjaxWebService.asmx" ServiceMethod="GetCourseData" runat="server" MinimumPrefixLength="3" EnableCaching="false" CompletionSetCount="3" >

            </ajaxToolkit:AutoCompleteExtender>
                        </p>

                    </ContentTemplate>
                </asp:UpdatePanel>
      


    </div>
    </form>
</body>
</html>
