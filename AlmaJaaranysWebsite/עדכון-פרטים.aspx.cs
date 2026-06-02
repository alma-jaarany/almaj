using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class הרשמה : System.Web.UI.Page
{
    public string strResult;
    public string st = "";
    public string password;
    public string email;
    public string phonenumber, phonenumber1;
    public string check3;
    public string radio2;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            password = Request.Form["password"];
            email = Request.Form["email"];
            phonenumber1 = Request.Form["phone1"];
            phonenumber = Request.Form["phone2"];
            check3 = Request.Form["check3"];
            radio2 = Request.Form["radio2"];

            string sql =
         "SELECT * FROM tUsers " +
         "WHERE email = N'" + email + "' ";

            bool userExists = MyAdoHelper.IsExist(sql);

            if (userExists)
            {
                st = "המשתמש הזה כבר רשום";
            }
            else
            {

                string sqlInsert =
    "INSERT INTO tUsers VALUES (" +
    "N'" + password + "'," +
    "N'" + email + "'," +
    "N'" + phonenumber1 + "-" + phonenumber + "'," +
    "N'" + check3 + "'," +
    "N'" + radio2 + "'" +
    ")";

                MyAdoHelper.DoQuery("mydb.mdf", sqlInsert);
                st = "נרשמת בהצלחה!";
                Response.Redirect("כניסה.aspx");
            }
        }
    }
}