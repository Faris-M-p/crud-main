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
    public partial class login : System.Web.UI.Page
    {
        string sql,Type;
        SqlDataReader rdr;
        Class1 c1=new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            sql = "select TYPE from LOGIN where USERNAME='" + TextBox1.Text + "'and PASSWORD='" + TextBox2.Text + "' and TYPE='" + DropDownList1.SelectedValue + "'";
            SqlDataReader rdr = c1.getdata(sql);
            Session["user"] = TextBox1.Text;
            if (rdr.Read())
            {
                Type = rdr.GetString(0);
                if (Type == "ADMIN")
                {
                    Response.Redirect("admin.aspx");


                }
                else if (Type == "USER")
                {
                    Response.Redirect("userprofile.aspx");

                }
                else
                {
                    Label1.Text = "error";
                }
            }
            else
            {
                Label1.Text = "USER DID NOT EXIST";
            }

        }
    }
}