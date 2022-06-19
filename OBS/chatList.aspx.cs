using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBS
{
    public partial class chatList : System.Web.UI.Page
    {
        static string msg = "";
        static string des = "";
        static string source = "";
        static int u_id;
        static int d_id;
        String mycon = "Data Source=.;Initial Catalog=OBS;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["uid"] != null)
            {

                u_id = ((int)Session["uid"]);


                SqlConnection objcon = new SqlConnection(mycon);
                objcon.Open();

                string sql = "select distinct uname from login inner join chatEntry on login.uid=chatEntry.did where chatEntry.sid=" + Session["uid"];
                SqlCommand objcmd = new SqlCommand(sql, objcon);
                SqlDataAdapter sda = new SqlDataAdapter(objcmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                objcmd.ExecuteNonQuery();

                objcon.Close();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection objcon = new SqlConnection(mycon);
            objcon.Open();
            msg = TextBox2.Text;
            //DateTime date = DateTime.ParseExact(DateTime.Now, "dd-MM-yyyy", null);
          //  date = Convert.ToDateTime(date, System.Globalization.CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);

           
            string sql = "insert into chat (sid,did,msg,dateTime) values (" + u_id + "," + d_id + ",'" + msg + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "')";
            SqlCommand objcmd = new SqlCommand(sql, objcon);
            objcmd.ExecuteNonQuery();
            TextBox2.Text = "";
            fillChatBox();
        }
        protected void fillChatBox()
        {
            TextBox1.Text = "";
            SqlConnection objcon = new SqlConnection(mycon);
            objcon.Open();

            SqlDataAdapter da;
            DataTable dt = new DataTable();
            DataRow dr;

            da = new SqlDataAdapter("select * from chat where (did= " + d_id + " and sid=" + u_id + " ) or (did= " + u_id + " and sid=" + d_id + ") ", mycon);
            SqlCommand sqlcmd = new SqlCommand("select count(*) from chat where (did= " + d_id + " and sid=" + u_id + " ) or (did= " + u_id + " and sid=" + d_id + ") ", objcon);
            Label1.Text = des;
            da.Fill(dt);
            int rcount = Convert.ToInt32(sqlcmd.ExecuteScalar());
            int i = 0;
           // Response.Write(rcount);
            for (i = 0; i < rcount; i++)

            {
                dr = dt.Rows[i];
                if (u_id == Convert.ToInt32(dr[1]))
                {
                    msg = TextBox1.Text + "\n [ You: ]      " + Convert.ToString(dr[3]);
                    TextBox1.Text = msg;
                }
                else
                {
                    msg = TextBox1.Text + "\n [ " + des + ": ]    " + Convert.ToString(dr[3]);
                    TextBox1.Text = msg;
                }
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlConnection objcon = new SqlConnection(mycon);

            if (e.CommandName == "Chat")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                TextBox1.Text = msg;

                des = row.Cells[0].Text;
               // Response.Write(des);

                objcon.Open();
                string sql = "select uid from login where login.uname='" + des + "'";
                SqlCommand objcmd = new SqlCommand(sql, objcon);

                d_id = (int)objcmd.ExecuteScalar();
                objcon.Close();
             
                TextBox1.Text = "";
                fillChatBox();
            }
        }
    }
}