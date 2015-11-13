var Default = {};

Default.Initialize = function() {
    $(".addReply").on('click', function () {
        $(".addReplyHolder").removeClass("none");
        $(window).scrollTop(0);
        $("body").css("overflow", "hidden");
        $(".commentText").focus();
    });

    $(".cancel").on('click', function () {
        $(".addReplyHolder").addClass("none");
        $("body").css("overflow", "");
    });

    $(".submit").on('click', function () {
        var comment = $(".replyComment").find("input").val();
        var code = $(".replyCode").find("textarea").val();
        var $copiedReply = $($(".reply")[0]).clone();
        $copiedReply.find(".username").text("admin");

        var d = new Date();
        var month = d.getMonth() + 1;
        var day = d.getDate();
        var output = (month < 10 ? '0' : '') + month + '/' +
            (day < 10 ? '0' : '') + day + '/' + d.getFullYear();
        $copiedReply.find(".date").text("Replied on: " + output);
        $copiedReply.find(".comment").text(comment);
        $copiedReply.find(".prettyprint").removeClass("prettyprinted").text(code);
        $(".addReply").before($copiedReply);
        $(".addReplyHolder").addClass("none");
        $("body").css("overflow", "");
        PR.prettyPrint();

        var comment = $(".replyComment").find("input").val("");
        var code = $(".replyCode").find("textarea").val("");
    });
};

$(function () {
    "use strict";
    Default.Initialize();
});