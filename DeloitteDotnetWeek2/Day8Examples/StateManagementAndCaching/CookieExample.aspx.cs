using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementAndCaching
{
    public partial class CookieExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            HttpCookie namecookie = new HttpCookie("NAME");
            namecookie.Value = txtUsername.Text;
            namecookie.Expires = DateTime.Now.AddMinutes(5);

            HttpCookie passcookie = new HttpCookie("PASS");
            passcookie.Value = txtPassword.Text;
            namecookie.Expires = DateTime.Now.AddMinutes(5);


            Response.Cookies.Add(namecookie);
            Response.Cookies.Add(passcookie);
            Response.Write("Cookies added");

        }

        protected void btnRead_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtPassword.Text = "";

            txtPassword.TextMode = TextBoxMode.SingleLine;

            txtUsername.Text = Request.Cookies["NAME"].Value.ToString();
            txtPassword.Text = Request.Cookies["Pass"].Value.ToString();



        }
    }
}