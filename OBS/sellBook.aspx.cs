using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Web;

namespace OBS
{
    public partial class sellBook : System.Web.UI.Page
    {
        String mycon = "Data Source=.;Initial Catalog=OBS;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"]==null)
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void subBTN_Click(object sender, EventArgs e)
        {

            SqlConnection objcon = new SqlConnection(mycon);
            objcon.Open();
            FileUpload1.SaveAs(Server.MapPath("~/book_images/") + Path.GetFileName(FileUpload1.FileName));
            String link = "book_images/" + Path.GetFileName(FileUpload1.FileName);
            // genre=category
            string genres = "";
            foreach (int i in ListBox1.GetSelectedIndices())
            {
                genres = genres + ListBox1.Items[i] + ",";
            }
            genres = genres.Remove(genres.Length - 1);


            string sql = "insert into sellBookDetails values ('" + Session["uid"] + "','" + bnameTB.Text + "', '" + aunameTB.Text + "','" + editionTB.Text + "','" + spTB.Text + "','" + rpTB.Text + "','" + descTB.Text + "','" + genres + "','" + link + "','" + keywordsTB.Text + "')";
            SqlCommand objcmd = new SqlCommand(sql, objcon);
            objcmd.ExecuteNonQuery();


            bnameTB.Text = "";
            spTB.Text = "";
            rpTB.Text = "";
            aunameTB.Text = "";
            descTB.Text = "";
            editionTB.Text = "";

            Response.Write("<script>alert('Your Ad has been succesfully posted.');</script>");


        }
    }
}