using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class חיפוש : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string name = Request.Form["name"];
            string bread = Request.Form["bread"];
            string age = Request.Form["age"];
            string sql = "SELECT * FROM Dogs WHERE " +
                "name LIKE N'%" + name + "%' AND " +
                "age LIKE N'%" + age + "%' AND " +
                "bread LIKE N'%" + bread + "%'";
            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            if (dt.Rows.Count == 0)
            {
                st = "אין נתונים";
            }
            else
            {
                st += "<table border = '1'>";
                st += "<tr>";
                st += "<td>שם הכלב:</td>";
                st += "<td>גיל הכלב:</td>";
                st += "<td>סוג הכלב:</td>";
                st += "</tr>";

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    st += "<tr>";

                    for (int k = 0; k < dt.Columns.Count; k++)
                    {
                        st += "<td>" + dt.Rows[i][k] + "</td>";
                    }
                    st += "</tr>";
                }
                st += "</table>";
            }
        }
    }
}