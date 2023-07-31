using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class AddBrand : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            if (!IsPostBack)
            {
                BindBrandRepeater();
            }
        }
    }


    private void BindBrandRepeater()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEshooping12"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblBrands", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrBrands.DataSource = dt;
                    rptrBrands.DataBind();
                }
            }
        }
    }
    
    protected void btnAddBrand_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEshooping12"].ConnectionString))
        {

            con.Open();
            SqlCommand cmmtocheckName = new SqlCommand("select Name from tblBrands  where Name='" + (txtBrand.Text) + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmmtocheckName);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                Response.Write("<script> alert('Already Exist  BrandName '); </script>");
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into tblBrands(Name) values('" + txtBrand.Text + "')", con);
                cmd.ExecuteNonQuery();
               
                Response.Write("<script> alert('Brand Add successfully '); </script>");
                txtBrand.Text = string.Empty;
            }
            con.Close();
            //lblmsg.Text = "Registration successfully done";
            //lblmsg.ForeColor = System.Drawing.Color.Green;
            txtBrand.Focus();



            
        }
    }
}