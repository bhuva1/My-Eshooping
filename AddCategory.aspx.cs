﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
          BindCategoryReapter();

    }

    private void BindCategoryReapter()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEshooping12"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblCategory", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrCategory .DataSource = dt;
                    rptrCategory.DataBind();
                }
            }
        }
    
    }
    protected void btnAddtxtCategory_Click(object sender, EventArgs e)
    {
          using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEshooping12"].ConnectionString))
        {
            con.Open();
            SqlCommand cmmtocheckCatName = new SqlCommand("select CatName from tblCategory  where CatName='" +(txtCategory.Text) + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmmtocheckCatName);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                Response.Write("<script> alert('Already Exist  CatName '); </script>");
            }
            else
            {

                SqlCommand cmd = new SqlCommand("Insert into tblCategory(CatName) Values('" + txtCategory.Text + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Category Added Successfully ');  </script>");
                txtCategory.Text = string.Empty;
            }
            con.Close();
            //lblMsg.Text = "Registration Successfully done";
            //lblMsg.ForeColor = System.Drawing.Color.Green;
            txtCategory.Focus();


        }
    
    }
}