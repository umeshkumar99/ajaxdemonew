<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ratings.aspx.cs" Inherits="Ajaxdemo.Ratings" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
          <p class="RatingHeader">
            How do you rate Umesh Verma Ajax website 
        </p>
        <p>
        <ajaxToolkit:Rating ID="Rating1" runat="server"
            CurrentRating="0" MaxRating="5"
          StarCssClass="ratingstars"
            FilledStarCssClass="filledratingstars"
            EmptyStarCssClass="Emptyratingstars"
            WaitingStarCssClass="savedratingstars"
            style="float:left"
            ></ajaxToolkit:Rating> </p>
        <p><asp:Button ID="btnSave" runat="server" Text="Save Ratings" OnClick="btnSave_Click" /></p>
        <p>
            <asp:Label ID="lblratings" runat="server" CssClass="RatingResult" ForeColor="#0033CC"></asp:Label>
        </p>



    </div>
    </form>
</body>
</html>
