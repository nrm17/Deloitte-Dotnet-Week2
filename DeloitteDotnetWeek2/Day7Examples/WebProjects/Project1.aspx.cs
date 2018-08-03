using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjects
{
    public partial class Project1 : System.Web.UI.Page
        

    {
        TrainingDBEntities db = new TrainingDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(string.IsNullOrEmpty(TextBox1.Text) && string.IsNullOrEmpty(TextBox2.Text))
            {
                var data = db.RegisterShoppings.ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();

            }

            if(!string.IsNullOrEmpty(TextBox1.Text))
            {
                string Name = TextBox1.Text;
                var data = (from t in db.RegisterShoppings
                            where t.Name == Name
                            select t).ToList();

                if (data.Count() == 0)
                    Label1.Text = "iNVALID NAME";
                else
                {
                    GridView1.DataSource = data;
                    GridView1.DataBind();
                }

            }
        }
    }
}