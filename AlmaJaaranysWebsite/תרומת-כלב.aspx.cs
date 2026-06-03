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
        string sqlInsert =
    "INSERT INTO Dogs (dogName, dogAge, dogBread) " +
    "VALUES (N'" + name + "', N'" + age + "', N'" + bread + "')";

        MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

       
        strResult = st;
      }
    }

   