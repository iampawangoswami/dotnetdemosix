using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERPSYSTEM
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=192.168.0.109;Initial Catalog=Medicine;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable ();
        }
        protected void btnregister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=192.168.0.109;Initial Catalog=Medicine;Integrated Security=True");            
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into registration values (@username,@password,@email)", con);
            cmd.Parameters.AddWithValue("username", txtusername.Text);
            cmd.Parameters.AddWithValue("password", txtpassword.Text);
            cmd.Parameters.AddWithValue("email", txtemail.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            txtusername.Text = "";
            txtpassword.Text = "";
            txtemail.Text = "";
            Label5.Text = "Your have registerd successfully";
            Label5.ForeColor = System.Drawing.Color.White;
        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=192.168.0.109;Initial Catalog=Medicine;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from registration where username=@username and password=@password ", con);
            cmd.Parameters.AddWithValue("@username", txtusername.Text);
            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0) {
                Response.Redirect("Home.aspx");
            } else {
                Label5.Text = "Your username and Password is incorrect";
                Label5.ForeColor = System.Drawing.Color.Red;
            }
        }
    }    
}

   