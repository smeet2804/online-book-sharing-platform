using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String mycon = "Data Source=.;Initial Catalog=OBS;Integrated Security=True";

            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();

            //            passerror.Visible = false;
            String query = "select count(*) from login where uname='" + unameTB.Text + "' and email='" + emailTB.Text + "' ";
            cmd.CommandText = query;
            cmd.Connection = con;
            con.Open();
            int count = (int)cmd.ExecuteScalar();
            con.Close();
            if (count == 0)
            {
                Response.Write("<script>alert('Username or email-id incorrect. Please check');</script>");
                return;
            }
            else
            {

          string sql = "update login set password='" + passTB.Text + "' where uname='" + unameTB.Text+"' ";

                SqlCommand objcmd = new SqlCommand(sql, con);
                //Response.Write(objcmd.CommandText);
                con.Open();
                objcmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Password Successfully Updated');</script>");

            }
            query = "select uid from login where uname='" + unameTB.Text + "'";
            cmd.CommandText = query;
            con.Open();
            Session["uid"] = (int)cmd.ExecuteScalar();
            con.Close();


        }
    }
}