<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnlineCodeReviewer.Default" %>

<%@ Register TagName="MainNav" TagPrefix="main" Src="~/NavMenuControl.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Code Reviewer</title>
    <meta name="description" content="Online Code Reviewer" />
    <link rel="stylesheet" media="all" type="text/css" href="Default.css" runat="server" />
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,300' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form runat="server">
        <div class="maincontainer">
            <main:MainNav ID="MainNav" runat="server" />
            <div class="maincontent">
                <div class="title">
                    Code Review for Michael Jordan
                </div>
                <div class="codeSection">
                    <div class="userInfo">
                        <div class="username">MJ23</div>
                        <div class="date">11/2/2015</div>
                    </div>
                </div>
                <div class="rightRail">
                </div>
            </div>
        </div>
    </form>
</body>
</html>
