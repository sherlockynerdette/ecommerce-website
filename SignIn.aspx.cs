using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Manashreefab
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UNAME"] != null && Request.Cookies["UPWD"] != null)
                {
                    Txtuser.Text = Request.Cookies["UNAME"].Value;
                    Txtpass.Text = Request.Cookies["UPWD"].Value;
                    CheckBox1.Checked = true;
                }
            }

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Customers where Username=@Username and Password=@pwd", con);
            cmd.Parameters.AddWithValue("@username", Txtuser.Text);
            cmd.Parameters.AddWithValue("@pwd", Txtpass.Text);
            Clr();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                if (CheckBox1.Checked)
                {
                    Response.Cookies["UNAME"].Value = Txtuser.Text;
                    Response.Cookies["UPWD"].Value = Txtpass.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(10);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(10);
                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                }

                string Utype;
                Utype = dt.Rows[0][6].ToString().Trim();

                if (Utype == "User")
                {

                    Session["Username"] = Txtuser.Text;
                    Response.Redirect("~/UserHome.aspx");
                }
                if (Utype == "Admin")
                {

                    Session["Username"] = Txtuser.Text;
                    Session["LoginType"] = "Admin";
                    Response.Redirect("~/AdminHome.aspx");
                }
            }
            else
            {
                lblError.Text = "Invalid Username and password";
            }
            //Response.Write("<script> alert('Login Successfully Done'); </script>");
            con.Close();
            //lblMsg.Text = "Registration Successfully Done";
            //lblMsg.ForeColor = System.Drawing.Color.Green;
        }

        private void Clr()
        {
            Txtuser.Text = String.Empty;
            Txtpass.Text = String.Empty;
        }
    }
}
