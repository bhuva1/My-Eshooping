using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class RecoverPassword : System.Web.UI.Page
{
    string GUIDvalue;
    DataTable dt = new DataTable();
    int uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEshooping12"].ConnectionString))
        {
            con.Open();
            GUIDvalue = Request.QueryString["id"];
            if (GUIDvalue != null)
            {
                SqlCommand cmd = new SqlCommand("select * from ForgotPass where Id=@Id", con);
                cmd.Parameters.AddWithValue("@Id", GUIDvalue);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                if(dt.Rows.Count!=0)
                {
                      uid = Convert.ToInt32(dt.Rows[0][1]);
                }

                else
                {
                      lblmsg.Text = "Your Passowrd Reset Link Is Expired or Invalid....try again";
                      lblmsg.ForeColor = System.Drawing.Color.Red;
                }



            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }

        }
        if (!IsPostBack)
        {
            if(dt.Rows.Count!=0)
            {
                txtconfirmpass.Visible = true;
                txtNewPass.Visible = true;
                lblNewPassword.Visible = true;
                lblconfirmpass.Visible = true;
                btnRestpass.Visible = true;

            }

            else
            {
                lblmsg.Text = "Your Passowrd Reset Link Is Expired or Invalid....try again";
                lblmsg.ForeColor = System.Drawing.Color.Red;

            }

        }


    }
    protected void btnRestpass_Click(object sender, EventArgs e)
    {
      if(txtNewPass.Text !=""&& txtconfirmpass.Text !=""&& txtNewPass.Text==txtconfirmpass.Text)
      {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEshooping12"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Update tblUsers set Password=@p where Uid=@Uid", con);
            cmd.Parameters.AddWithValue("@p", txtNewPass.Text);
            cmd.Parameters.AddWithValue("@Uid", uid);
            cmd.ExecuteNonQuery();


            SqlCommand cmd2 = new SqlCommand("delete form ForgotPass where uid='"+ uid+"'", con);
            cmd2.ExecuteNonQuery();
            Response.Write("<script> alert('password reset sucessfully done'); </script>");
            Response.Redirect("~/SignIn.aspx");
        }
      }

    }
}