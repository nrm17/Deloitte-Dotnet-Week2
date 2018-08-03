using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementAndCaching
{
    public partial class HiddenField : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.StartsWith("X") || TextBox1.Text.StartsWith("Y") || TextBox1.Text.StartsWith("Z"))
            {
                HiddenField1.Value = "Bad";
            }
            else
                HiddenField1.Value = "Good";

            Label1.Text = HiddenField1.Value.ToString();

        }
    }
}