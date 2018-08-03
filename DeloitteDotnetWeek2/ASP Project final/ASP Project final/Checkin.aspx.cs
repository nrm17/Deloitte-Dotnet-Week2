using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Project_final
{
    public partial class Checkin : System.Web.UI.Page
    {
        VisitorDBEntities1 db = new VisitorDBEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // initializing and assigning all tools
            string fname = txtFname.Text;
            string lname = txtLname.Text;
            string comp = txtComp.Text;
            string vis = txtVis.Text;

            string idtype = " ";
            idtype = ddlIDtype.SelectedValue.ToString();

            string idnum = txtIDnum.Text;
            string vehicle = txtVehicle.Text;
            string con = txtCon.Text;
            string pov = txtPov.Text;
            DateTime dt = DateTime.Now;
            

            Response.Write("Visitor information entered : " + fname);

            // insert data to DB through entity framework
            VisitorInfo vi = new VisitorInfo();
            vi.Fname = fname;
            vi.Lname = lname;
            vi.Company = comp;
            vi.Visiting = vis;
            vi.ID_Type = idtype;
            vi.ID_Num = idnum;
            vi.Vehicle_Num = vehicle;
            vi.Contact_num = con;
            vi.Purpose = pov;
            vi.Status = "Signed In";
            vi.Time = dt;
            









            db.VisitorInfoes.Add(vi);
            var res = db.SaveChanges();

            if (res > 0)
                Response.Write("Visitor information inserted : " + fname);

            int id = vi.Id;
            Response.Write("Id = " + id);

            Response.Write("Time signed in is : " + dt);





        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtComp.Text = " ";
            txtCon.Text = " ";
            txtFname.Text = " ";
            txtIDnum.Text = " ";
            txtVehicle.Text = " ";
            txtVis.Text = " ";
            txtLname.Text = " ";
            txtPov.Text = " ";

            ddlIDtype.Text = "Select";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}