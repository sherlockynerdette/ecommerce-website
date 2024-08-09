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
    public partial class AddProduct : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindCategory();
                BindSize();
                BindMaterial();
                ddlSubCat.Enabled = false;
            }
        }

        private void BindMaterial()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Material", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlMaterials.DataSource = dt;
                ddlMaterials.DataTextField = "MaterialName";
                ddlMaterials.DataValueField = "MaterialID";
                ddlMaterials.DataBind();
                ddlMaterials.Items.Insert(0, new ListItem("-Select-", "0"));
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

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("sp_InsertProducts", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PName",txtProductName.Text);
            cmd.Parameters.AddWithValue("@PPrice",txtPrice.Text);
            cmd.Parameters.AddWithValue("PCategory", ddlCategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("PSubCat", ddlSubCat.SelectedItem.Value);
            cmd.Parameters.AddWithValue("PSize", ddlSize.SelectedItem.Value);
            cmd.Parameters.AddWithValue("PProductDetails", txtPDetails.Text);
            cmd.Parameters.AddWithValue("PMaterial", ddlMaterials.SelectedItem.Value);
            if (cbCOD.Checked = true)
            {
                cmd.Parameters.AddWithValue("@COD", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@COD", 0.ToString());
            }
            if (cb30ret.Checked = true)
            {
                cmd.Parameters.AddWithValue("@30DayRet", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@30DayRet", 0.ToString());
            }
            con.Open();
            Int64 PID= Convert.ToInt64(cmd.ExecuteScalar());

            if (fuImg01.HasFile)
            {
                string SavePath = Server.MapPath("~/images/ProductImages/")+PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extention = Path.GetExtension(fuImg01.PostedFile.FileName);
                fuImg01.SaveAs(SavePath + "\\" + txtProductName.Text.ToString().Trim()+"01" + Extention);

                SqlCommand cmd1 = new SqlCommand("Insert into ProductImage values('" + PID + "','" + txtProductName.Text.ToString().Trim() + "01" + "','" + Extention + "')", con);
                cmd1.ExecuteNonQuery();
            }

            Response.Write("<script> alert('Product Added Succesfully'); </script>");
            con.Close();

        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlSubCat.Enabled = true;
            int MainCatID = Convert.ToInt32(ddlCategory.SelectedItem.Value);
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from SubCategory where MainCatID = '" + ddlCategory.SelectedItem.Value+"'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlSubCat.DataSource = dt;
                ddlSubCat.DataTextField = "SubCatName";
                ddlSubCat.DataValueField = "SubCatID";
                ddlSubCat.DataBind();
                ddlSubCat.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }

        private void BindSize()
        {

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Size", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlSize.DataSource = dt;
                ddlSize.DataTextField = "SizeName";
                ddlSize.DataValueField = "SizeID";
                ddlSize.DataBind();
                ddlSize.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }



    }
}