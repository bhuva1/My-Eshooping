using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtSignUp_Click1(object sender, EventArgs e)
    {
         if(isformvalid())
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager .ConnectionStrings ["MyEshooping12"].ConnectionString ))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblUsers(Username,Password,Email,Name,Usertype) Values('" + txtUname.Text + "','" + txtPass.Text + "','" + txtEmail.Text + "','" + txtName.Text + "','User')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Registration Successfully done');  </script>");
                clr();
                con.Close();
                 lblmsg.Text = "Registration Successfully done";
                 lblmsg.ForeColor = System.Drawing.Color.Green;
                
            }
            Response.Redirect("~/SignIn.aspx");
        }
       else
        {
            Response.Write("<script> alert('Registration failed');  </script>");
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }

    }

    private bool isformvalid()
    {
        if (txtUname.Text == "")
        {
            Response.Write("<script> alert('username not valid');  </script>");
            txtUname.Focus();

            return false;
        }
        else if(txtPass.Text  =="")
        {
            Response.Write("<script> alert('Password not valid');  </script>");
            txtPass.Focus();
            return false;
        }
        else if (txtPass.Text != txtcpass.Text )
        {
            Response.Write("<script> alert('confirm Password not valid');  </script>");
            txtcpass.Focus();
            return false;
        }
        else if (txtEmail .Text == "")
        {
            Response.Write("<script> alert('Email not valid');  </script>");
            txtEmail.Focus();
            return false;
        }
        else if (txtName .Text == "")
        {
            Response.Write("<script> alert('Name not valid');  </script>");
            txtName.Focus();
            return false;
        }

        return true;
    }

    private void clr()
    {
        txtName.Text = string.Empty;
        txtPass.Text  = string.Empty;
        txtUname. Text = string.Empty;
        txtEmail. Text = string.Empty;
        txtcpass.Text = string.Empty;
    }
}
    

    