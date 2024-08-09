using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Manashreefab
{
    public partial class AddSize : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindSubCategoryRepeater();
            }
        }

        private void BindSubCategoryRepeater()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from Size", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptrSize.DataSource = dt;
            rptrSize.DataBind();
        }

        protected void btnAddSize_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Size(SizeName)Values('" +txtSize.Text + "')", con);
            cmd.ExecuteNonQuery();

            Response.Write("<script> alert('Size Added Succesfully'); </script>");
            txtSize.Text = String.Empty;
            con.Close();
            txtSize.Focus();
        }
    }
}