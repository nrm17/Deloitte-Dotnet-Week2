using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjects
{
    public partial class InsertUserInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            TrainingDBEntities db = new TrainingDBEntities();
            UserInfo ui = new UserInfo();
            ui.name = txtName.Text;
            ui.status = txtStatus.Text;

            db.UserInfoes.Add(ui);
            var res = db.SaveChanges();
            if (res > 0)
                Response.Write("Data inserted");

        }
    }
}