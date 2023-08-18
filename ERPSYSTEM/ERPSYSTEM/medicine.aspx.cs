using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERPSYSTEM
{
    public partial class medicine : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
                GenerateAutoID();
                ClearTextBox();
            }
        }
        SqlConnection con = new SqlConnection("Data Source=192.168.0.109;Initial Catalog=Medicine;Integrated Security=True");
        String med = "med";
        private object dataTable;

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from medicinetbl", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataBind();
        }
        private void GenerateAutoID()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Count (medcode) From medicinetbl", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            txt1.Text = med + i.ToString();
        }
        private void ClearTextBox()
        {
            txt2.Text = "";
            txt3.Text = "";
            txt4.Text = "";
            txt5.Text = "";
            txt6.Text = "";
        }
        protected void savebtn_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand commtomedcode = new SqlCommand("select medcode from medicinetbl where medcode='" + (txt1.Text) + "'", con);

            SqlDataAdapter d = new SqlDataAdapter(commtomedcode);
            DataTable dt = new DataTable();
            d.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Allready Exixted Medicine Code');", true);
            }
            else
            {
                SqlCommand comm = new SqlCommand("Insert into medicinetbl Values ('" + (txt1.Text) + "','" + txt2.Text + "','" + txt3.Text + "','" + txt4.Text + "','" + txt5.Text + "','" + txt6.Text + "')", con);
                comm.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert ('Successfully Inserted');", true);
                LoadRecord();
                GenerateAutoID();
                ClearTextBox();
                
            }
        }
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select * from medicinetbl where medcode = '" + txt1.Text + "'", con);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
                using (SqlDataAdapter sda = new SqlDataAdapter(comm))
                {
                    txt2.Text = r.GetValue(1).ToString();
                    txt3.Text = r.GetValue(2).ToString();
                    txt4.Text = r.GetValue(3).ToString();
                    txt5.Text = r.GetValue(4).ToString();
                    txt6.Text = r.GetValue(5).ToString();
                }
                con.Close();
                LoadRecord();          
        }    
        protected void updatebtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update medicinetbl set medcode = '" + txt1.Text + "', medname = '" + txt2.Text + "', medprice = '" + txt3.Text + "', medstock = '" + txt4.Text + "', medexpdate = '" + txt5.Text + "', medcategeory = '" + txt6.Text + "' where medcode ='" + txt1.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert ('successfully updated');", true);
            LoadRecord();
            GenerateAutoID();
            ClearTextBox();
        }
        protected void deletebtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("delete medicinetbl where medcode = '" + txt1.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert ('successfully Deleted');", true);
            LoadRecord();
            GenerateAutoID();
            ClearTextBox();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            txt1.Text = gr.Cells[0].Text;
            txt2.Text = gr.Cells[1].Text;
            txt3.Text = gr.Cells[2].Text;
            txt4.Text = gr.Cells[3].Text;
            txt5.Text = gr.Cells[4].Text;
            txt6.Text = gr.Cells[5].Text;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
        //    string searchTerm = txtSearch.Text.Trim();

        //    // Implement your search logic here to retrieve the data based on the searchTerm.
        //    // For example, if you have a DataTable called "dataTable" containing your data:
        //    DataTable dataTable = YourDataAccessLayer.SearchData(searchTerm);

        //    // Bind the search results to the GridView
        //    GridViewSearchResults.DataSource = dataTable;
        //    GridViewSearchResults.DataBind();


        //    DataTable dt = new DataTable();
        //    dt.Columns.Add("medcode", typeof(int));
        //    dt.Columns.Add("medname", typeof(int));
        //    dt.Columns.Add("medprice", typeof(int));
        //    dt.Columns.Add("medstock", typeof(int));
        //    dt.Columns.Add("medexpdate", typeof(int));
        //    dt.Columns.Add("medcategeory", typeof(int));
        //    foreach (GridViewRow gv in GridView2.Rows)
        //    {
        //        CheckBox checkbox = (CheckBox)gv.Cells[0].FindControl("CheckBox1");
        //        if (checkbox.Checked)
        //        {
        //            DataRow row = dt.NewRow();
        //            row["medcode"] = gv.Cells[1].Text;
        //            row["medname"] = gv.Cells[2].Text;
        //            row["medprice"] = gv.Cells[3].Text;
        //            row["medstock"] = gv.Cells[4].Text;
        //            row["medexpdate"] = gv.Cells[5].Text;
        //            row["medcategeory"] = gv.Cells[6].Text;
        //            dt.Rows.Add(row);
        //        }
        //    }
        //    GridView2.DataSource = dt;
        //    GridView2.DataBind();
        }
    }

}


