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
                <div class="addReplyHolder none">
                    <div class="addReplyContent">
                        <div class="origCode">
                            <div class="origCodeTitle">Original Code</div>
                            <div class="codeSection">
                                <div class="comment">
                                    Here I am setting the selected value of a navigation bar using jquery.
                                </div>
                                <div class="code">
                                    <code class="prettyprint">$(".navBar li").on('click', function() {<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;for (var i=0; i < $(".navBar").find("li").length; i++) {<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$($(".navBar").find("li")[i]).removeClass("active");<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;$(this).addClass("active");<br />
                                        });
                                    </code>
                                </div>
                                <div class="comment">
                                    I loop through and remove the active class of each li and then set the clicked one to be active.
                                </div>
                            </div>
                            <div class="clearer"></div>
                        </div>
                        <div class="newReply">
                            <div class="newReplyTitle">Enter Reply Here:</div>
                            <div class="replyComment">
                                <asp:TextBox ID="Comment" runat="server" CssClass="commentText" Placeholder="Comments"></asp:TextBox>
                            </div>
                            <div class="replyCode">
                                <asp:TextBox ID="Code" runat="server" TextMode="MultiLine" Placeholder="Code"></asp:TextBox>
                            </div>
                            <div class="buttonBar">
                                <div class="submit">Submit</div>
                                <div class="cancel">Cancel</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="contentSection">
                    <div class="initialCode">
                        <div class="userInfo">
                            <div class="username">MJ23</div>
                            <div class="date">Asked on: 11/2/2015</div>
                        </div>
                        <div class="codeSection">
                            <div class="comment">
                                Here I am setting the selected value of a navigation bar using jquery.
                            </div>
                            <div class="code">
                                <code class="prettyprint">$(".navBar li").on('click', function() {<br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;for (var i=0; i < $(".navBar").find("li").length; i++) {<br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$($(".navBar").find("li")[i]).removeClass("active");<br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;$(this).addClass("active");<br />
                                    });
                                </code>
                            </div>
                            <div class="comment">
                                I loop through and remove the active class of each li and then set the clicked one to be active.
                            </div>
                            <div class="tags">
                                <div class="tag">
                                    Jquery
                                </div>
                                <div class="tag">
                                    Javascript
                                </div>
                                <div class="tag">
                                    CSS
                                </div>
                            </div>
                        </div>
                        <div class="clearer"></div>
                    </div>
                    <div class="replyTitle">
                        2 Replies
                    </div>
                    <div class="replies">
                        <div class="reply">
                            <div class="userInfo">
                                <div class="username">mikeWits</div>
                                <div class="date">Replied on: 11/3/2015</div>
                            </div>
                            <div class="codeSection">
                                <div class="comment">
                                    It is actually more efficient to use jquery's each loop. 
                                </div>
                                <div class="code">
                                    <code class="prettyprint">$(".navBar").find("li").on('click', function() {<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;$.each($(".navBar").find("li"), function () {<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(this).removeClass("active");<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;});<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;$(this).addClass("active");<br />
                                        });
                                    </code>
                                </div>
                            </div>
                            <div class="clearer"></div>
                        </div>
                        <div class="reply">
                            <div class="userInfo">
                                <div class="username">joeJohnson</div>
                                <div class="date">Replied on: 11/4/2015</div>
                            </div>
                            <div class="codeSection">
                                <div class="comment">
                                    If only one element will be active at one time why not just do this? 
                                </div>
                                <div class="code">
                                    <code class="prettyprint">
                                        $(".navBar").find("li").on('click', function() {<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;$(".navBar").find("li.active").removeClass("active");<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;$(this).addClass("active");<br />
                                        });
                                    </code>
                                </div>
                            </div>
                            <div class="clearer"></div>
                        </div>
                        <div class="addReply">
                            <i class="fa fa-plus"></i>Reply
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
