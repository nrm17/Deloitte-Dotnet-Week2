using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Project_final
{
    
    public partial class CheckOut : System.Web.UI.Page
    {
        VisitorDBEntities1 db = new VisitorDBEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var data = (from t in db.VisitorInfoes
                            where t.Status == "Signed In"
                            select new { t.Id, t.Fname, t.Lname, t.ID_Type, t.ID_Num }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }

            
        }

        protected void btnID_Click(object sender, EventArgs e)
        {
            if(string.IsNullOrEmpty(txtName.Text))
            {
                var data = db.VisitorInfoes.ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }

        else
            {
                int id = int.Parse(txtName.Text);
                var data = (from t in db.VisitorInfoes
                            where t.Id == id && t.Status == "Signed In"
                            select new { t.Id, t.Fname, t.Lname, t.ID_Type, t.ID_Num }).ToList();

                if (data.Count() == 0)
                    Label2.Text = "Invalid ID";
                else
                {
                    GridView1.DataSource = data;
                    GridView1.DataBind();
                }
            }
        }

        protected void btnName_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtName.Text))
            {
                var data = db.VisitorInfoes.ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }

            else
            {
                string name = txtName.Text;
                var data = (from t in db.VisitorInfoes
                            where t.Fname == name && t.Status == "Signed In"
                            select new {t.Id, t.Fname, t.Lname, t.ID_Type, t.ID_Num }).ToList();

                if (data.Count() == 0)
                    Label2.Text = "Invalid Name";
                else
                {
                    GridView1.DataSource = data;
                    GridView1.DataBind();
                }
            }

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            Button b1 = (Button)sender;
            GridViewRow r = (GridViewRow)b1.NamingContainer;
            int id= int.Parse(r.Cells[1].Text);

            var olddata = (from t in db.VisitorInfoes
                           where t.Id == id && t.Status == "Signed In"
                           select t).SingleOrDefault();
            olddata.Status = "Signed Out";

            var res = db.SaveChanges();
            if (res > 0)
                Response.Write("Status Updated");
            GridView1.DataBind();

            txtName.Text = " ";
            var data = (from t in db.VisitorInfoes
                        where t.Status == "Signed In"
                        select new { t.Id, t.Fname, t.Lname, t.ID_Type, t.ID_Num }).ToList();
            GridView1.DataSource = data;
            GridView1.DataBind();



        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}