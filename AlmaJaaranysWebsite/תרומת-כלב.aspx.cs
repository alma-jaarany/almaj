using System;
using System.Collections.Generic;
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
        
        string sqlInsert = "Insert into tUsers values(N'" + name + "',N'" + age + "',N'" + bread + ")";

        MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

        bool userExists = MyAdoHelper.IsExist(sqlInsert);

       
        strResult = st;
      }
    }

   