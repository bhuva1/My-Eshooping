using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddGender : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        BindGenderReapter();
    }


    private void BindGenderReapter()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEshooping12"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblGender", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrGender.DataSource = dt;
                    rptrGender.DataBind();
                }
            }
        }
    }
    protected void btnAddBrand_Click(object sender, EventArgs e)
    {
         {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEshooping12"].ConnectionString))
        {
            con.Open();
            SqlCommand cmmtocheckGenderName = new SqlCommand("select GenderName from tblGender  where GenderName='" + (txtGender.Text) + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmmtocheckGenderName);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                Response.Write("<script> alert('Already Exist  GenderName '); </script>");
            }
            else
            {




                SqlCommand cmd = new SqlCommand("Insert into tblGender(GenderName) Values('" + txtGender.Text + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Gender Added Successfully ');  </script>");
                txtGender.Text = string.Empty;
            }

            con.Close();
            txtGender.Focus();
            
        }
        BindGenderReapter();
    }
}
    }

    
