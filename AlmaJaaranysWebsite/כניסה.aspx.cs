using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class כניסה : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
             string password = Request.Form["password"];
            string email = Request.Form["email"];

            string sql =
                "SELECT * FROM tUsers " +
                "WHERE email = '" + email + "' " +
                "AND password = '" + password + "'";


            bool userExists = MyAdoHelper.IsExist(sql);

            if (!userExists)
            {
                st = "אימייל או סיסמה שגויים";
            }
            else
            {
                //st = "משתמש רשום";
                Response.Redirect("דף-הבית.aspx");
            }

        }
    }
}