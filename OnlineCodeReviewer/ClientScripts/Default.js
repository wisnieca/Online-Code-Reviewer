var Default = {};

Default.Initialize = function() {
    $(".addReply").on('click', function () {
        $(".addReplyHolder").removeClass("none");
        $(window).scrollTop(0);
        $("body").css("overflow", "hidden");
    });

    $(".submit").on('click', function () {
        $(".addReplyHolder").addClass("none");
        $("body").css("overflow", "");
    });
};

$(function () {
    "use strict";
    Default.Initialize();
});