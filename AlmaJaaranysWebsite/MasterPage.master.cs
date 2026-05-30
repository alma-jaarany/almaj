using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["manager"] == null)
        {
            managerLink.Visible = false;
        }

        if (Session["level"] != null &&
    Session["level"].ToString() == "אורח")
        {
            regLink.Visible = true;
        }

        if (Session["user"] != null || Session["manager"] != null)
        {
            exitLink.Visible = true;
            regLink.Visible = false;
            logInLink.Visible = false;
        }
        else
        {
            exitLink.Visible = false;
            regLink.Visible = true;
            logInLink.Visible = true;
        }




    }
}