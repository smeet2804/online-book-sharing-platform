using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OBS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["uid"]!=null)
            {
                Session.Clear();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String mycon = "Data Source=.;Initial Catalog=OBS;Integrated Security=True";

            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();

            //            passerror.Visible = false;
            String query = "select count(*) from login where uname='" + unameTB.Text + "' and password='" + passTB.Text + "' ";
            cmd.CommandText = query;
            cmd.Connection = con;
            con.Open();
            int count = (int)cmd.ExecuteScalar();
            con.Close();
            if (count == 0)
            {
                passerror.Visible = true;
                return;
            }

            query = "select uid from login where uname='" + unameTB.Text + "'";
            cmd.CommandText = query;
            con.Open();
            Session["uid"] = (int)cmd.ExecuteScalar();
            con.Close();

            Response.Redirect("UserDashboard.aspx");
        }
    }
}