using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineCodeReviewer
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.ClientScript.IsClientScriptBlockRegistered("JQuery"))
                Page.ClientScript.RegisterClientScriptInclude("JQuery", this.ResolveUrl("~/ClientScripts/jquery-2.1.4.min.js"));

            if (!Page.ClientScript.IsClientScriptBlockRegistered("Default"))
                Page.ClientScript.RegisterClientScriptInclude("Default", this.ResolveUrl("~/ClientScripts/Default.js"));

            if (!Page.ClientScript.IsClientScriptBlockRegistered("Pretty"))
                Page.ClientScript.RegisterClientScriptInclude("Pretty", this.ResolveUrl("https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js"));
        }
    }
}