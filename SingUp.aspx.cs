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
    public partial class SingUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void txtsingup_Click(object sender, EventArgs e)
        {
            if (Isformvalid())
            {
                {

                    SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True");
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into Customers(UserName, Contact, Address, Email, Password,Usertype)Values('" + Txtuser.Text + "', '" + txtcontact.Text + "', '" + Txtaddress.Text + "', '" + Txtemail.Text + "', '" + Txtpass.Text + "','User')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('Registration Successfully Done'); </script>");
                    Clr();
                    con.Close();
                    lblmsg.Text = "Registration succesfull";
                    lblmsg.ForeColor = System.Drawing.Color.Green;

                }
                Response.Redirect("SignIn.aspx");

            }


            else
            {
                Response.Write("<script> alret('Registration not successful'); </script>");
                lblmsg.Text = "Registration unsuccesfull";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
        }

            private bool Isformvalid()
            {
                if (Txtuser.Text == "")
                {
                    Response.Write("<script> alert('username not vaild');</script>");
                    Txtuser.Focus();
                    return false;
                }
                else if (txtcontact.Text == "")
                {
                    Response.Write("<script> alert('contact not vaild');</script>");
                    txtcontact.Focus();
                    return false;
                }
                else if (Txtemail.Text == "")
                {
                    Response.Write("<script> alert('email not vaild');</script>");
                    Txtemail.Focus();
                    return false;
                }
                else if (Txtaddress.Text == "")
                {
                    Response.Write("<script> alert('address not vaild');</script>");
                    Txtaddress.Focus();
                    return false;
                }
                else if (Txtpass.Text == "")
                {
                    Response.Write("<script> alert('password not vaild');</script>");
                    Txtpass.Focus();
                    return false;
                }
                else if (Txtpass.Text != Txtpass1.Text)
                {
                    Response.Write("<script> alert('Password not vaild');</script>");
                    return false;
                }
                return true;
            }
            private void Clr()
            {
                Txtuser.Text = String.Empty;
                txtcontact.Text = String.Empty;
                Txtaddress.Text = String.Empty;
                Txtemail.Text = String.Empty;
                Txtpass.Text = String.Empty;
                Txtpass1.Text = String.Empty;
            }
        }
    }

