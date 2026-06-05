using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    
     public string strResult;
     public string st = "";
     public string name;
     public string age;
     public string bread;

    protected void Page_Load(object sender, EventArgs e)
      {
        if (!Page.IsPostBack)
            return;

        name = Request.Form["name"];
        age = Request.Form["age"];
        bread = Request.Form["bread"];
        // החלפת כל גרש בודד בשני גרשים כדי למנוע שגיאות בשאילתת SQL
        string dogName = name.Replace("'", "''");
        string dogAge = age.Replace("'", "''");
        string dogBread = bread.Replace("'", "''");
        string sqlInsert =
        "INSERT INTO Dogs (dogName, dogAge, dogBread) " +
        "VALUES (N'" + dogName + "', N'" + dogAge + "', N'" + dogBread + "')";

        MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);
        strResult = st;
      }
    }

   