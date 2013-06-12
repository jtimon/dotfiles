//////////////////////////////////////////
// SESSION

require("session.js");
session_auto_save_auto_load = true;

//////////////////////////////////////////
// BIG HINT NUMBERS
register_user_stylesheet(
    "data:text/css," +
        escape(
            "@namespace url(\"http://www.w3.org/1999/xhtml\");\n" +
            "span.__conkeror_hint {\n"+
            "  font-size: 18px !important;\n"+
            "  line-height: 18px !important;\n"+
            "}"));
