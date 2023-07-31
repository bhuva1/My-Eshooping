using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;
public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRestpass_Click(object sender, EventArgs e)
    {

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEshooping12"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblUsers where Email=@Email", con);
            cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                String myGUID = Guid.NewGuid().ToString();
                int Uid = Convert.ToInt32(dt.Rows[0][0]);

                SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(Id,Uid,RequestDateTime) values('" + myGUID + "','" + Uid + "',GETDATE())", con);
                cmd1.ExecuteNonQuery();


                //Send Reset link via Email

                String ToEmailAddress = dt.Rows[0][3].ToString();
                String Username = dt.Rows[0][1].ToString();
                String EmailBody = "Hi ," + Username + ",<br/><br/>Click the link below to reset your password<br/> <br/> http://localhost:54966/MyEshoppingwebsite/ForgotPassword.aspx=" + myGUID;


                MailMessage PassRecMail = new MailMessage("bbhuva294@gmail.com", ToEmailAddress);

                PassRecMail.Body = EmailBody;
                PassRecMail.IsBodyHtml = true;
                PassRecMail.Subject = "Reset Password";

                using (SmtpClient client = new SmtpClient())
                {
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential("bbhuva294@gmail.com", "aaqejuuoupmdwgtm");
                    client.Host = "smtp.gmail.com";
                    client.Port = 587;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;

                    client.Send(PassRecMail);
                }

                //--------------


                lblResetpassmsg.Text = "Reset Link send ! Check YOur email for reset password";
                lblResetpassmsg.ForeColor = System.Drawing.Color.Green;
                txtEmailID.Text = string.Empty;
            }
            else
            {
                lblResetpassmsg.Text = "OOps! This Email Does not Exist...Try agian ";
                lblResetpassmsg.ForeColor = System.Drawing.Color.Red;
                txtEmailID.Text = string.Empty;
                txtEmailID.Focus();

            }




        }
    }
}