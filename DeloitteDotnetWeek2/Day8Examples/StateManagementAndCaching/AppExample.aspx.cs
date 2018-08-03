using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementAndCaching
{
    public partial class AppExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application["Count"] = (int)Application["Count"] + 1;
            Session["Count"] = (int)Session["Count"] + 1;

            Response.Write("Application : " + Application["Count"]);
            Response.Write("<br/>");
            Response.Write("Session : " + Session["Count"]);
        }
    }
}