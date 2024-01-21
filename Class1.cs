using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    public class Class1
    {
        string sql;
        SqlDataReader rdr;



        public SqlConnection connect()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\faris\\source\\repos\\WebApplication2\\App_Data\\Database1.mdf;Integrated Security=True");
            con.Open();
            return con;
        }
        public SqlDataReader getdata(string sql)
        {
            SqlDataReader rdr;
            SqlCommand cmd = new SqlCommand(sql, connect());
            rdr = cmd.ExecuteReader();
            return rdr;
        }
        public void insupdel(string sql)
        {
            SqlCommand cmd = new SqlCommand(sql, connect());
            cmd.ExecuteNonQuery();
        }
        public DataSet GetAdapter(string sql)
        {
            SqlDataAdapter adapter = new SqlDataAdapter(sql, connect());
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            return ds;

        }
    }
}