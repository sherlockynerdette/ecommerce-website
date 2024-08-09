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
    public partial class AddMaterial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMaterail();
            }
        }

        private void BindMaterail()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from Material", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptrMaterial.DataSource = dt;
            rptrMaterial.DataBind();
        }

        protected void btnAddMaterial_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Material(MaterialName)Values('" + txtMaterial.Text + "')", con);
            cmd.ExecuteNonQuery();

            Response.Write("<script> alert('Size Added Succesfully'); </script>");
            txtMaterial.Text = String.Empty;
            con.Close();
            txtMaterial.Focus();

        }
    }
}