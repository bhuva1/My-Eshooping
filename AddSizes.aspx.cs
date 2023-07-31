using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddSizes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            if (!IsPostBack)
            {
                BindBrand();
                BindMainCategory();
                BindGender();
                BindrptrSize();
            }
        }
    }



    private void BindrptrSize()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEshooping12"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("select A.*,B.*,C.*,D.*,E.* from tblSizes A inner join tblCategory B on B.CatID =a.CategoryID  inner join tblBrands C on C.BrandID =A.BrandID inner join tblSubCategory D on D.SubCatID =A.SubCategoryID inner join tblGender E on E.GenderID =A.GenderID ", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrSize.DataSource = dt;
                    rptrSize.DataBind();
                }
            }
        }
    }

    private void BindMainCategory()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEshooping12"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblCategory", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                Category.DataSource = dt;
                Category.DataTextField = "CatName";
                Category.DataValueField = "CatID";
                Category.DataBind();
                Category.Items.Insert(0, new ListItem("-Select-", "0"));

            }
        }
    }



    private void BindBrand()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEshooping12"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblBrands", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlBrand.DataSource = dt;
                ddlBrand.DataTextField = "Name";
                ddlBrand.DataValueField = "BrandID";
                ddlBrand.DataBind();
                ddlBrand.Items.Insert(0, new ListItem("-Select-", "0"));

            }
        }
    }



    private void BindGender()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEshooping12"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblGender with(nolock)", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlGender.DataSource = dt;
                ddlGender.DataTextField = "GenderName";
                ddlGender.DataValueField = "GenderID";
                ddlGender.DataBind();
                ddlGender.Items.Insert(0, new ListItem("-Select-", "0"));

            }
        }
    }


    protected void btnAddSize_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEshooping12"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblSizes(SizeName,BrandID,CategoryID,SubCategoryID,GenderID) Values('" + txtSize.Text + "','" + ddlBrand.SelectedItem.Value + "','" + Category.SelectedItem.Value + "','" + SubCategory.SelectedItem.Value + "','" + ddlGender.SelectedItem.Value + "')", con);
            cmd.ExecuteNonQuery();

            Response.Write("<script> alert('Size Added Successfully ');  </script>");
            txtSize.Text = string.Empty;

            con.Close();
            ddlBrand.ClearSelection();
            ddlBrand.Items.FindByValue("0").Selected = true;

            Category.ClearSelection();
            Category.Items.FindByValue("0").Selected = true;


            SubCategory.ClearSelection();
            SubCategory.Items.FindByValue("0").Selected = true;

            ddlGender.ClearSelection();
            ddlGender.Items.FindByValue("0").Selected = true;

        }
        BindrptrSize();
    }

    protected void Category_SelectedIndexChanged(object sender, EventArgs e)
    {
        int MainCategoryID = Convert.ToInt32(Category.SelectedItem.Value);

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEshooping12"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblSubCategory where MainCatID='" + Category.SelectedItem.Value + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                SubCategory.DataSource = dt;
                SubCategory.DataTextField = "SubCatName";
                SubCategory.DataValueField = "SubCatID";
                SubCategory.DataBind();
                SubCategory.Items.Insert(0, new ListItem("-Select-", "0"));

            }
        }
    }
}
    

