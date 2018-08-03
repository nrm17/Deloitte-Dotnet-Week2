using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementAndCaching
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnQS_Click(object sender, EventArgs e)
        {
            Response.Redirect("Page2.aspx?V1="+txtName.Text+"&V2="+txtAge.Text+"&V3="+txtEmail.Text);
        }
    }
}