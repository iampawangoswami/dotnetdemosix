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
    public partial class sellers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
                //GenerateAutoID();
                //ClearTextBox();
                ////ShowMedicines();
            }
        }
        SqlConnection con = new SqlConnection("Data Source=192.168.0.109;Initial Catalog=Medicine;Integrated Security=True");
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from medeseller", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into medeseller Values ('" + (txtseller1.Text) + "','" + txtseller2.Text + "','" + txtseller3.Text + "','" + txtseller4.Text + "','" + txtseller5.Text + "','" + txtseller6.Text + "','" + txtseller7.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert ('Successfully Inserted');", true);
            LoadRecord();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {            
            con.Open();
            SqlCommand comm = new SqlCommand("select * from medeseller where sellid ='" + int.Parse(txtseller1.Text) + "'", con);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
                using (SqlDataAdapter sda = new SqlDataAdapter(comm))
                {
                    //Response.Redirect("showdata.aspx.GridView1=Show");
                    txtseller2.Text = r.GetValue(1).ToString();
                    txtseller3.Text = r.GetValue(2).ToString();
                    txtseller4.Text = r.GetValue(3).ToString();
                    txtseller5.Text = r.GetValue(4).ToString();
                    txtseller6.Text = r.GetValue(5).ToString();
                    txtseller7.Text = r.GetValue(6).ToString();
                }
            con.Close();            
        }
        protected void Button3_Click(object sender, EventArgs e)
        {           
            con.Open();
            SqlCommand comm = new SqlCommand("update medeseller set sellid = '" + txtseller1.Text + "', sellmail = '" + txtseller2.Text + "', sellname = '" + txtseller3.Text + "', sellpass = '" + txtseller4.Text + "', selladdress = '" + txtseller5.Text + "', selldob = '" + txtseller6.Text + "', sellgender='" + txtseller7.Text + "' where sellid ='" + txtseller1.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert ('successfully updated');", true);
            LoadRecord();
        }
        protected void Button4_Click(object sender, EventArgs e)
        {            
            con.Open();
            SqlCommand comm = new SqlCommand("delete medeseller where sellid = '" + txtseller1.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert ('successfully Deleted');", true);
            LoadRecord();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            txtseller1.Text = gr.Cells[1].Text;
            txtseller2.Text = gr.Cells[2].Text;
            txtseller3.Text = gr.Cells[3].Text;
            txtseller4.Text = gr.Cells[4].Text;
            txtseller5.Text = gr.Cells[5].Text;
            txtseller6.Text = gr.Cells[6].Text;
            txtseller7.Text = gr.Cells[7].Text;
            
        }
    }
}