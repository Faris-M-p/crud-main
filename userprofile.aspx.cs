using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class userhome : System.Web.UI.Page
    {
        string sql;
        Class1 obj = new Class1();
        SqlDataReader rdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            sql = "SELECT Id,NAME,DESCRIPTION,PHONE,EMAIL,USERNAME,IMAGE from REGISTRATION where USERNAME='" + Session["user"].ToString() + "'";
            rdr = obj.getdata(sql);
            if (rdr.Read())
            {

                Label1.Text = rdr["Id"].ToString();
                Label2.Text = rdr["NAME"].ToString();
                Label3.Text = rdr["PHONE"].ToString();
                Label4.Text = rdr["EMAIL"].ToString();
                Label5.Text = rdr["USERNAME"].ToString();
                Label6.Text = rdr["DESCRIPTION"].ToString();
                Image1.ImageUrl = rdr["IMAGE"].ToString();
                

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}