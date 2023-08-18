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
    public partial class category : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=192.168.0.109;Initial Catalog=Medicine;Integrated Security=True");
        String med = "0000";
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (!IsPostBack)
            {
                LoadRecord();
                GenerateAutoID();
                //ClearTextBox();
            }           
        }
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from medcategeory", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataBind();
        }
        private void GenerateAutoID()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Count (cellid) From medcategeory", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            Label2.Text = med + i.ToString();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {            
            con.Open();
            SqlCommand comm = new SqlCommand("update medcategeory set cellname = '" + txtcategeory.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert ('successfully updated');", true);
            LoadRecord();
            GenerateAutoID();           
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into medcategeory Values ( '"+Label2.Text+"','" + txtcategeory.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert ('Successfully Inserted');", true);
            LoadRecord();
            GenerateAutoID();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {            
                con.Open();
                SqlCommand comm = new SqlCommand("delete medcategeory where cellname = '" + txtcategeory.Text + "'", con);
                comm.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert ('successfully Deleted');", true);
                LoadRecord();
                GenerateAutoID();                      
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            
        }
    }
}