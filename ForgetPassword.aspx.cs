using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Net.Mail;
using System.Net;

namespace Manashreefab
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-OCG70P5\\SQLEXPRESS;Initial Catalog=Manashree;Integrated Security=True"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Customers where Email=@Email", con);
                cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int UID = Convert.ToInt32(dt.Rows[0][0]);

                    SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(Id,UID,RequestDateTime) values('" + myGUID + "','" + UID + "',GETDATE())", con);
                    cmd1.ExecuteNonQuery();


                    //Send Reset link via Email

                    String ToEmailAddress = dt.Rows[0][4].ToString();
                    String Username = dt.Rows[0][1].ToString();
                    String EmailBody = "Hi ," + Username + ",<br/><br/>Click the link below to reset your password<br/> <br/> https://localhost:44391/RecoveryPassword.aspx?id=" + myGUID;


                    MailMessage PassRecMail = new MailMessage("manashreefab@gmail.com", ToEmailAddress);

                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml = true;
                    PassRecMail.Subject = "Reset Password";

                    using (SmtpClient client = new SmtpClient())
                    {
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = new NetworkCredential("manashreefab@gmail.com", "hseaudgbqszkxjsq");
                        client.Host = "smtp.gmail.com";
                        client.Port = 587;
                        client.DeliveryMethod = SmtpDeliveryMethod.Network;

                        client.Send(PassRecMail);
                    }

                    //--------------


                    lblResetPassMsg.Text = "Reset Link send ! Check YOur email for reset password";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                    txtEmailID.Text = string.Empty;
                }
                else
                {
                    lblResetPassMsg.Text = "OOps! This Email Does not Exist...Try agian ";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Red;
                    txtEmailID.Text = string.Empty;
                    txtEmailID.Focus();

                }




            }
        }
    }




}
