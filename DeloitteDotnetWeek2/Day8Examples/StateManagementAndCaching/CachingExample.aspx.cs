using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Caching;

namespace StateManagementAndCaching
{
    public partial class CachingExample : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlDataAdapter adp = null;
        DataSet ds = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=DESKTOP-9MJ1CJ8;Initial Catalog=StudentDB;Integrated Security=True;Pooling=False");
            adp = new SqlDataAdapter("Select * from StudentInfo", con);

            if(Cache["data"] == null)
            {
                ds = new DataSet();
                adp.Fill(ds, "StudentInfo");
                Cache.Add("data", ds, null, DateTime.Now.AddMinutes(2), TimeSpan.Zero, System.Web.Caching.CacheItemPriority.Default, null);
                Label1.Text = "From db";

            }
            else
            {
                ds = (DataSet)Cache["data"];
                Label1.Text = "From cache";
            }

            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=DESKTOP-9MJ1CJ8;Initial Catalog=StudentDB;Integrated Security=True;Pooling=False");
            adp = new SqlDataAdapter("Select * from StudentInfo", con);

            if (Cache["data1"] == null)
            {
                ds = new DataSet();
                adp.Fill(ds, "StudentInfo");
                Cache.Add("data1", ds, null, DateTime.MaxValue, TimeSpan.FromMinutes(2), System.Web.Caching.CacheItemPriority.Default, null);
                Label1.Text = "From db";

            }
            else
            {
                ds = (DataSet)Cache["data1"];
                Label1.Text = "From cache";
            }

            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=DESKTOP-9MJ1CJ8;Initial Catalog=StudentDB;Integrated Security=True;Pooling=False");
            adp = new SqlDataAdapter("Select * from StudentInfo", con);

            if (Cache["data2"] == null)
            {
                ds = new DataSet();
                adp.Fill(ds, "StudentInfo");
                CacheDependency cd = new CacheDependency(@"c:\FILES\Data.txt");
                Cache.Add("data2", ds, cd, DateTime.MaxValue, TimeSpan.Zero, System.Web.Caching.CacheItemPriority.Default,null);
                Label1.Text = "From db";

            }
            else
            {
                ds = (DataSet)Cache["data2"];
                Label1.Text = "From cache";
            }

            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

        }
    }
}