using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OBS
{
    public partial class SignUp : System.Web.UI.Page
    {
        String mycon = "Data Source=.;Initial Catalog=OBS;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {



           // Response.Write(dateTB.Text);
            SqlConnection objcon = new SqlConnection(mycon);
            objcon.Open();

            SqlCommand cmd = new SqlCommand();


            String query = "select count(*) from login where uname='" + unameTB.Text + "' ";
            cmd.CommandText = query;
            cmd.Connection = objcon;
            int count = (int)cmd.ExecuteScalar();
        
            if (count >=1)
            {
                passerror.Visible = true;
                return;
            }

            DateTime date = DateTime.ParseExact(dateTB.Text, "yyyy-MM-dd", null);
            date = Convert.ToDateTime(date, System.Globalization.CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);

            string sql = "insert into userDetails values ('" + nameTB.Text + "','" + emailTB.Text + "','" + pnoTB.Text + "','" + date.ToString("yyyy-MM-dd") + "','" + addTB.Text + "','" + ddl.SelectedValue.ToString() + "','" + cityTB.Text + "','" + pinTB.Text + "','" + passTB.Text + "','" + unameTB.Text + "')";

            SqlCommand objcmd = new SqlCommand(sql, objcon);
            objcmd.ExecuteNonQuery();

            sql = "select uid from userDetails where uname='" + unameTB.Text + "'";
            objcmd = new SqlCommand(sql, objcon);

            int  uid = (int)objcmd.ExecuteScalar();



            Response.Write("<script>alert('Account successfully created. Please login');</script>");
            sql = "insert into login values ("+uid+",'" + unameTB.Text + "','" + emailTB.Text + "'  ,  '" + passTB.Text + "')";
            objcmd = new SqlCommand(sql, objcon);
            objcmd.ExecuteNonQuery();
            System.Threading.Thread.Sleep(5000);
           Server.Transfer("Login.aspx");
        }
    }
}