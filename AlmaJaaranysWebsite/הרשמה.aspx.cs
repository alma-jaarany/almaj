using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class הרשמה : System.Web.UI.Page
{
    public string name;
    public string email;
    public string phonenumber;
    public string check3;
    public string radio2;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        name = Request.Form["firstName1"];
        email = Request.Form["email"];
        phonenumber = Request.Form["phone1" + "phone2"];
        check3 = Request.Form["email"];
        radio2 = Request.Form["radio2"];
    }
}