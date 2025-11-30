using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class אודות : System.Web.UI.Page
{ public string str;
    protected void Page_Load(object sender, EventArgs e)
    {
    
    str = "<table>";
        for(int i = 0; i <= 10; i++)
        {
            str += "<tr>";
       
      for(int j = 0; j <= 10; j++) 
        { str += "<td>";
           str += i*j; 
                str += "</td>";
        }
       
            str += "</tr>";
        }
    str = "</table>";
    }
}