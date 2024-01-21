using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication2
{
    public partial class regform : System.Web.UI.Page
    { 
            string sql, extension, fname;
    Class1 c1 = new Class1();

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox3.Attributes.Add("onkeypress", "return checkin()");

        }
        private void upload()
        {
            try
            {
                string path = Server.MapPath("~/images/");
                if (FileUpload1.HasFile)
                {
                    extension = System.IO.Path.GetExtension(FileUpload1.FileName.ToLower());
                    if (extension == ".gif" || extension == ".png" || extension == ".jpg" || extension == ".bmp")
                    {
                        fname = "~/images/" + FileUpload1.FileName;
                        FileUpload1.SaveAs(path + FileUpload1.FileName);

                    }
                    else
                    {
                        Response.Write("incorrupt file");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "")
            {

                Label2.Text = "please fill all data";
            }
            else
            {
                try
                {
                    sql = "select USERNAME from  LOGIN where USERNAME='" + TextBox5.Text + "'  ";
                    SqlDataReader rdr = c1.getdata(sql);
                    if (rdr.Read())
                    {
                        Label2.Text = "username already exist";
                    }
                    else
                    {
                        Label2.Text = "";
                        upload();
                        sql = "insert into REGISTRATION values('" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + TextBox4.Text + "','" + TextBox5.Text + "','" + fname + "')";
                        c1.insupdel(sql);
                        sql = "insert into LOGIN values('" + TextBox5.Text + "','" + TextBox6.Text + "','USER')";
                        c1.insupdel(sql);
                        Response.Write("<script>alert('registration uploaded')</script>");

                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TextBox4.Text = "";
                        TextBox5.Text = "";
                        TextBox6.Text = "";
                        TextBox7.Text = "";


                    }

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }
    }
}