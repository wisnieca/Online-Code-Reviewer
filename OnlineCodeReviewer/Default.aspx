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
                <div id="Review1" runat="server" visible="true">
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
                                        <code class="prettyprint">$(".navBar").find("li").on('click', function() {<br />
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
                <div id="Review2" runat="server" visible="false">
                    <div class="title">
                        Code Review for Philip Petrosino
                    </div>
                    <div class="addReplyHolder none">
                        <div class="addReplyContent">
                            <div class="origCode">
                                <div class="origCodeTitle">Original Code</div>
                                <div class="codeSection">
                                    <div class="comment">
                                        This function updates the cards for the card game Purple.
                                    </div>
                                    <div class="code">
                                    <code class="prettyprint">public void UpdateCards(String currentCard, String previousCard, int cardCount)<br />
                                            {<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;CurrentCard = currentCard;<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;PreviousCard = previousCard;<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;CardCount = cardCount;<br />
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;int layersSize = cardCount >= 2 ? 2 : 1;<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;Drawable[] layers = new Drawable[layersSize];<br />
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;layers[0] = getDrawableCard(CurrentCard);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;if (layersSize == 2) {<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layers[1] = getDrawableCard(CurrentCard);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layers[0] = getDrawableCard(PreviousCard);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;LayerDrawable layerDrawable = new LayerDrawable(layers);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;if (layersSize == 2) {<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layerDrawable.setLayerInset(1, 250, 250, 0, 0);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layerDrawable.setLayerInset(0, 0, 0, 250, 250);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;((ImageView) view.findViewById(R.id.imgCards)).setImageDrawable(layerDrawable);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;((TextView) view.findViewById(R.id.lblCount)).setText(String.valueOf(CardCount));<br />
                                            }
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
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="commentText" Placeholder="Comments"></asp:TextBox>
                                </div>
                                <div class="replyCode">
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Placeholder="Code"></asp:TextBox>
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
                                <div class="username">ppetro08</div>
                                <div class="date">Asked on: 11/23/2015</div>
                            </div>
                            <div class="codeSection">
                                <div class="comment">
                                    This function updates the cards for the card game Purple.
                                </div>
                                <div class="code">
                                    <code class="prettyprint">public void UpdateCards(String currentCard, String previousCard, int cardCount)<br />
                                            {<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;CurrentCard = currentCard;<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;PreviousCard = previousCard;<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;CardCount = cardCount;<br />
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;int layersSize = cardCount >= 2 ? 2 : 1;<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;Drawable[] layers = new Drawable[layersSize];<br />
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;layers[0] = getDrawableCard(CurrentCard);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;if (layersSize == 2) {<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layers[1] = getDrawableCard(CurrentCard);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layers[0] = getDrawableCard(PreviousCard);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;LayerDrawable layerDrawable = new LayerDrawable(layers);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;if (layersSize == 2) {<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layerDrawable.setLayerInset(1, 250, 250, 0, 0);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layerDrawable.setLayerInset(0, 0, 0, 250, 250);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;((ImageView) view.findViewById(R.id.imgCards)).setImageDrawable(layerDrawable);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;((TextView) view.findViewById(R.id.lblCount)).setText(String.valueOf(CardCount));<br />
                                            }
                                        </code>
                                </div>
                                <div class="comment">
                                    This function updates the cards for the card game Purple.
                                </div>
                                <div class="tags">
                                    <div class="tag">
                                        Android
                                    </div>
                                    <div class="tag">
                                        Java
                                    </div>
                                </div>
                            </div>
                            <div class="clearer"></div>
                        </div>
                        <div class="replyTitle">
                            1 Reply
                        </div>
                        <div class="replies">
                            <div class="reply">
                                <div class="userInfo">
                                    <div class="username">cwisniewski</div>
                                    <div class="date">Replied on: 11/24/2015</div>
                                </div>
                                <div class="codeSection">
                                    <div class="comment">
                                        You should get rid of the check "layerSize == 2" from checking twice.
                                    </div>
                                    <div class="code">
                                        <code class="prettyprint">public void UpdateCards(String currentCard, String previousCard, int cardCount)<br />
                                            {<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;CurrentCard = currentCard;<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;PreviousCard = previousCard;<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;CardCount = cardCount;<br />
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;int layersSize = cardCount >= 2 ? 2 : 1;<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;Drawable[] layers = new Drawable[layersSize];<br />
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;layers[0] = getDrawableCard(CurrentCard);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;LayerDrawable layerDrawable;<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;if (layersSize == 2) {<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layers[1] = getDrawableCard(CurrentCard);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layers[0] = getDrawableCard(PreviousCard);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layerDrawable = new LayerDrawable(layers);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layerDrawable.setLayerInset(1, 250, 250, 0, 0);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layerDrawable.setLayerInset(0, 0, 0, 250, 250);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;((ImageView) view.findViewById(R.id.imgCards)).setImageDrawable(layerDrawable);<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;((TextView) view.findViewById(R.id.lblCount)).setText(String.valueOf(CardCount));<br />
                                            }
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
        </div>
    </form>
</body>
</html>
