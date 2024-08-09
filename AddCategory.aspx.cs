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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCategoryRepeater();
            }
        }

        private void BindCategoryRepeater()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from Category", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptrCategory.DataSource = dt;
            rptrCategory.DataBind();

        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Category(CatName)Values('" + txtCategory.Text + "')", con);
            cmd.ExecuteNonQuery();

            Response.Write("<script> alert('Category Added Succesfully'); </script>");
            txtCategory.Text = String.Empty;
            con.Close();
            txtCategory.Focus();
        }
    }
}