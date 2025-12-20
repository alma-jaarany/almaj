using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form : System.Web.UI.Page
{
    public string name;
    public string check2;
    public string radio1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Request.Form["firstName"];
        string check2 = Request.Form["check2"];
        string radio1 = Request.Form["radio1"];
    }
}