<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Explore.aspx.cs" Inherits="OnlineCodeReviewer.Explore" %>

<%@ Register TagName="MainNav" TagPrefix="main" Src="~/NavMenuControl.ascx" %>

<head runat="server">
    <title>Online Code Review</title>
    <meta name="description" content="Online Code Reviewer" />
    <link rel="stylesheet" media="all" type="text/css" href="Default.css" runat="server" />
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,300' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="maincontainer">
            <main:MainNav ID="MainNav" runat="server" />
            <div class="maincontent explore">
                <div class="comingSoon">Explore section coming soon.</div>
                <i class="fa fa-smile-o fa-4x"></i>
            </div>
        </div>
    </form>
</body>
</html>
