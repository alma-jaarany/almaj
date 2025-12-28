using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class הרשמה : System.Web.UI.Page
{
    public string name;
    public string check3;
    public string radio2;
    protected void Page_Load(object sender, EventArgs e)
    {
        name = Request.Form["firstName1"];
        check3 = Request.Form["check3"];
        radio2 = Request.Form["radio2"];
    }
}