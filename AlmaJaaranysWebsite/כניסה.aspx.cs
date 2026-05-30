using System;
using System.Collections.Generic;
using System.Data;
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

            if (email == "almajaarany@gmail.com" && password == "alma2410")
            {
                Session["user"] = null;
                Session["manager"] = "ok";
                Session["level"] = "מנהל";
                Response.Redirect("מנהל.aspx");
            }
            else
            {
                string sql =
                    "SELECT * FROM tUsers " +
                    "WHERE email = '" + email + "' " +
                    "AND password = '" + password + "'";


                //bool userExists = MyAdoHelper.IsExist(sql);
                DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

                if (dt.Rows.Count == 0)
                {
                    Session["level"] = "אורח";
                    st = "אימייל או סיסמה שגויים";
                }
                else
                {
                    //st = "משתמש רשום";
                    Session["user"] = "ok";
                    Session["level"] = dt.Rows[0]["email"];
                    Response.Redirect("דף-הבית.aspx");
                }
            }
        }
    }
}