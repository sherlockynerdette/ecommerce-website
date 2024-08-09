using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace Manashreefab
{
    public partial class Cutamization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCategory();
            }
        }

        private void BindCategory()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Category", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CatName";
                ddlCategory.DataValueField = "CatID";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("sp_Custamization", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CPName", txtProductName.Text);
            cmd.Parameters.AddWithValue("CCategory", ddlCategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("CSize", txtsize.Text);
            cmd.Parameters.AddWithValue("CMaterial",txtMaterial.Text);
            cmd.Parameters.AddWithValue("CColour", txtcolour.Text);
            cmd.Parameters.AddWithValue("CTexture", txttexture.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Custamization Done'); </script>");
            con.Close();

        }

    }
}
