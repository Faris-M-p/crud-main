using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string sql;
        Class1 c1=new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox3.Attributes.Add("onkeypress", "return checkin()");
            //TextBox4.Attributes.Add("onkeypress", "return mailcheck()");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {  
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
 
            TextBox6.Text = "";
            TextBox7.Text = "";

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
        

        

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "")
            {
                //Label1.Text = Session["user"].ToString();
                Label1.Text = "please fill all data";
            }
            else
            {
                try
                {
                   
                    sql = "UPDATE REGISTRATION SET NAME='" + TextBox1.Text + "',DESCRIPTION='" + TextBox2.Text + "',PHONE=" + TextBox3.Text + ",EMAIL='" + TextBox4.Text + "' WHERE USERNAME='" + Session["user"].ToString() + "'";

                        c1.insupdel(sql);
                        sql = "UPDATE LOGIN SET PASSWORD='" + TextBox6.Text + "' WHERE USERNAME='" + Session["user"].ToString() +"'";
                        c1.insupdel(sql);
                        Response.Write("<script>alert('profile updated')</script>");
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TextBox4.Text = "";
                        TextBox7.Text = "";
                        TextBox6.Text = "";


                    

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }
    }
}