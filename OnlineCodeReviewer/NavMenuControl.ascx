<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NavMenuControl.ascx.cs" Inherits="OnlineCodeReviewer.NavMenuControl" %>
<link href='https://fonts.googleapis.com/css?family=Alex+Brush' rel='stylesheet' type='text/css' />

<div class="mainNavContainer">
    <div class="pageTitle"><a href="Default.aspx">Online Code Reviewer</a></div>
    <ul class="mainNav">
        <li><a>Sign Up</a></li>
        <li><a>Log In</a></li>
        <li><a href="Explore.aspx">Explore</a></li>
        <li class="search">
            <div class="searchContainer">
                <i class="fa fa-search"></i>
                <asp:TextBox ID="Search" runat="server" PlaceHolder="Search"></asp:TextBox></div>
        </li>
    </ul>
</div>
