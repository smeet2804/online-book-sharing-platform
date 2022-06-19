using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBS
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["uid"]==null)
            {
                LinkButton1.Visible = false;
                LinkButton2.Visible = false;
                LinkButton3.Visible = false;
                LinkButton4.Visible = false;
                LinkButton5.Visible = false;
                LinkButton7.Visible = false;
            }
            else
            {
                LinkButton1.Visible = true;
                LinkButton2.Visible = true;
                LinkButton3.Visible = true;
                LinkButton4.Visible = true;
                LinkButton5.Visible = true;
                LinkButton7.Visible = true;
            }
        }

    }
}