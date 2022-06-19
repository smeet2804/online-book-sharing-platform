using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBS
{
    public partial class ViewDetails : System.Web.UI.Page
    {
        String mycon = "Data Source=.;Initial Catalog=OBS;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

            int bid = Convert.ToInt32(e.CommandArgument.ToString());
            int u_id = (int)Session["uid"];
            SqlConnection objcon = new SqlConnection(mycon);

            objcon.Open();
            string sql = "select distinct uid from sellBookDetails where bid=" + bid ;

            SqlCommand objcmd = new SqlCommand(sql, objcon);

            int d_id = (int)objcmd.ExecuteScalar();


            sql = "select count(*) from chatEntry where (did= " + d_id + " and sid=" + u_id + " ) or (did= " + u_id + " and sid=" + d_id + ") ";
            objcmd = new SqlCommand(sql, objcon);

            int rcount = Convert.ToInt32(objcmd.ExecuteScalar());

            if (rcount == 0)
            {
                sql = "insert into chatEntry values (" + Session["uid"] + "," + d_id + ")";
                objcmd = new SqlCommand(sql, objcon);
                objcmd.ExecuteNonQuery();

                sql = "insert into chatEntry values (" + d_id + "," + Session["uid"] + ")";
                objcmd = new SqlCommand(sql, objcon);
                objcmd.ExecuteNonQuery();
            }
            objcon.Close();

            Response.Redirect("chatList.aspx?id=" + e.CommandArgument.ToString());

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}