using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBS
{
    public partial class UserDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            errorLB.Visible = false;
            if (Session["uid"] == null)
            {
                Response.Redirect("Login.aspx");
            }

        }

       

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "viewdetails")
            {
                Response.Redirect("ViewDetails.aspx?bid=" + e.CommandArgument.ToString());
            }

        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Response.Write(catList.SelectedValue);
            String cat = "",query="";
            cat = catList.SelectedValue.ToString();
            if (TextBox1.Text != "" && catList.SelectedIndex >= 0)
            {
               


                 query = "select * from sellbookDetails where uid<>'" + Session["uid"] + "' and category like '%" + cat + "%' and keywords like '%" + TextBox1.Text + "%'";

              
            }
            else if (catList.SelectedIndex>=0)
            {
                 query = "select * from sellbookDetails where uid<>'" + Session["uid"] + "' and category like '%" + cat + "%' ";

            }
            String mycon = "Data Source=.;Initial Catalog=OBS;Integrated Security=True";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();

          

            
            cmd.CommandText = query;

           // Response.Write(cmd.CommandText);
            cmd.Connection = con;
            con.Open();
            DataList1.DataSourceID = null;
            DataList1.DataSource = cmd.ExecuteReader();
            DataList1.DataBind();

            if(DataList1.Items.Count==0)
            {
                errorLB.Text = "No records found!!";
                errorLB.Visible = true;
            }
            else
            {
                errorLB.Visible = false;
            }
            con.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            String mycon = "Data Source=.;Initial Catalog=OBS;Integrated Security=True";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();

            String cat = "";

            cat = catList.SelectedValue.ToString();


            String query = "select * from sellbookDetails where uid<>'" + Session["uid"] + "'  and keywords like '%" + TextBox1.Text + "%'";

            cmd.CommandText = query;

         //   Response.Write(cmd.CommandText);
            cmd.Connection = con;
            con.Open();
            DataList1.DataSourceID = null;
            DataList1.DataSource = cmd.ExecuteReader();
            DataList1.DataBind();
            if (DataList1.Items.Count == 0)
            {
                errorLB.Text = "No records found!!";
                errorLB.Visible = true;
            }
            else
            {
                errorLB.Visible = false;
            }
            con.Close();
        }
    }
}