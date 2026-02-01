using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class הרשמה : System.Web.UI.Page
{
    public string strResult;

    public string password;
    public string email;
    public string phonenumber, phonenumber1;
    public string check3;
    public string radio2;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            return;

        password = Request.Form["password"];
        email = Request.Form["email"];
        phonenumber1 = Request.Form["phone1"];
        phonenumber = Request.Form["phone2"];
        check3 = Request.Form["check3"];
        radio2 = Request.Form["radio2"];

        string sqlInsert = "Insert into tUsers values(N'" + password + "',N'" + email + "',N'" + phonenumber1+ phonenumber + "',N'" + check3 + "'," + radio2 + ")";

        MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);
        strResult = "נרשמת בהצלחה!";

    }
}