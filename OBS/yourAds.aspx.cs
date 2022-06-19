using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBS
{
    public partial class yourAds : System.Web.UI.Page
    {
        String mycon = "Data Source=.;Initial Catalog=OBS;Integrated Security=True";
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)

            {

                BindGridView();

            }
        }
        protected void BindGridView()

        {
          
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(mycon);
            SqlDataAdapter da = new SqlDataAdapter("Select * from sellBookDetails where uid="+Session["uid"] , con);

            con.Open();

            da.Fill(dt);

            con.Close();



            if (dt.Rows.Count > 0)

            {

                GridView1.DataSource = dt;

                GridView1.DataBind();

            }

        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)

        {

            GridView1.EditIndex = e.NewEditIndex;

            BindGridView();



        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)

        {
            SqlConnection con = new SqlConnection(mycon);
           
            int bid = Int32.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());

            // find values for update

            TextBox bname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt1");
            TextBox auname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt2");
            TextBox edition = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt3");
            TextBox sp = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt4");
            TextBox rp = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt5");
            TextBox desc = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt6");
          
            FileUpload FileUpload1 = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1");


            string path;
          

            if (FileUpload1.HasFile)

            {

                path = "book_images/" + Path.GetFileName(FileUpload1.FileName);

                //save image in folder

                FileUpload1.SaveAs(MapPath(path));

            }

            else

            {

                // use previous user image if new image is not changed

                Image img = (Image)GridView1.Rows[e.RowIndex].FindControl("img_user");

                path = img.ImageUrl;

            }



            SqlCommand cmd = new SqlCommand("update sellBookDetails set bname='" + bname.Text + "',auname = '"+auname.Text+ "',edition = '" + edition.Text + "',sp = '" + sp.Text + "',rp = '" + rp.Text + "',description = '" + desc.Text + "',imgname='"+path+"'  where bid = " + bid + "", con);
    

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();



            GridView1.EditIndex = -1;

            BindGridView();

        }

        // cancel edit event

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)

        {

            GridView1.EditIndex = -1;

            BindGridView();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection(mycon);

            int bid = Int32.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            SqlCommand cmd = new SqlCommand("delete from sellBookDetails where bid="+ bid, con);


            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();



          

            BindGridView();


        }
    }
}