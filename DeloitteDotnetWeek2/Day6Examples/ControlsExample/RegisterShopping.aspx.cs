using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsExample
{
    public partial class RegisterShopping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // textbox 
            string name = txtName.Text;
            string pass = txtPass.Text;

            // drop down list

            string gender = ddlGender.SelectedItem.Text;

            // radio button

            string membership = " ";
            if (rbFree.Checked)
                membership = rbFree.Text;

            if (rbPaid.Checked)
                membership = rbPaid.Text;
            // check box list 

            string prefer = "";
            foreach (ListItem li in cblShopping.Items)
            {
                if (li.Selected)
                    prefer += li.Text + ",";
            }

            // check box
            string cod = "";
            if (cbCOD.Checked)
                cod = "Yes";
            else
                cod = "No";

            Label1.Text = name + "<br/>" + gender + "<br/>" + membership + "<br/>" + prefer + "<br/>" + cod + "<br/>" + pass;
        }
    }
}