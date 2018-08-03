using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Entity;
using BAL;

namespace Web_UI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Login1.UserNameLabelText = "User ID";

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            LoginEntity le = new LoginEntity();
            le.UserID =int.Parse (Login1.UserName);
            le.Password = Login1.Password;

            LoginBAL BAL = new LoginBAL();
            try
            {
                var res = BAL.Authenticate(le);
                if (res)

                    //Login1.FailureText = "Login Details valid";
                    FormsAuthentication.RedirectFromLoginPage(le.UserID.ToString(), false);
            }
            catch (Exception ex)
            {

                Login1.FailureText = ex.Message;
            }

        }
    }
}