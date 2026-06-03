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
        if (Session["manager"] != null)
        {
            managerLink.Visible = true;
            regLink.Visible = false;
            searchLink.Visible = true;
            exitLink.Visible = true;
            logInLink.Visible = false;
            dogLink.Visible = true;
        }
        else if(Session["user"] != null)
        {
            managerLink.Visible = false;
            regLink.Visible = false;
            searchLink.Visible = true;
            exitLink.Visible = true;
            logInLink.Visible = false;
            dogLink.Visible = true;
        }
        else
        {
            managerLink.Visible = false;
            regLink.Visible = true;
            searchLink.Visible = false;
            exitLink.Visible = false;
            logInLink.Visible = true;
            dogLink.Visible = false;
        }
    }
}