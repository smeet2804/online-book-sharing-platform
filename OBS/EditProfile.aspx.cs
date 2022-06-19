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
    public partial class EditProfile : System.Web.UI.Page
    {

        static int u_id;

        String mycon = "Data Source=.;Initial Catalog=OBS;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["uid"] != null)
                {

                    u_id = ((int)Session["uid"]);


                    SqlConnection objcon = new SqlConnection(mycon);
                    objcon.Open();

                    string sql = "SELECT * FROM userDetails where uid=" + u_id;

                    SqlCommand objcmd = new SqlCommand(sql, objcon);

                    SqlDataAdapter da;
                    DataTable dt = new DataTable();
                    DataRow reader;
                    da = new SqlDataAdapter(sql, mycon);
                    da.Fill(dt);
                    reader = dt.Rows[0];

                    nameTB.Text = reader[1].ToString();
                    dateTB.Text = ((DateTime)reader[4]).ToString("yyyy-MM-dd"); ;
                    pnoTB.Text = reader[3].ToString();
                    emailTB.Text = reader[2].ToString();
                    ddl.Text = reader[6].ToString();
                    cityTB.Text = reader[7].ToString();
                    addTB.Text = reader[5].ToString();
                    passTB.Text = reader[9].ToString();
                    pinTB.Text = reader[8].ToString();






                    objcon.Close();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
       
        SqlConnection objcon = new SqlConnection(mycon);
        objcon.Open();
            DateTime date = DateTime.ParseExact(dateTB.Text, "yyyy-MM-dd", null);
            date = Convert.ToDateTime(date, System.Globalization.CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);

            string sql = "update userDetails set name='" + nameTB.Text + "',email='" + emailTB.Text + "',pno='" + pnoTB.Text + "',dob='" + date.ToString("yyyy-MM-dd") + "',address='" + addTB.Text + "',state='" + ddl.SelectedValue.ToString() + "',city='" + cityTB.Text + "',pincode='" + pinTB.Text + "',password='" + passTB.Text + "' where uid="+ Session["uid"];

              SqlCommand objcmd = new SqlCommand(sql, objcon);
            //Response.Write(objcmd.CommandText);
        objcmd.ExecuteNonQuery();
            Response.Write("<script>alert('Profile Successfully Updated');</script>");

        }


    }
}