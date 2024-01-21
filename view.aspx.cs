using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class view : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        string sql;
         DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            sql = "select * from REGISTRATION";
            ds = obj.GetAdapter(sql);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}