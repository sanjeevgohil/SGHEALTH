using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class pregistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        string str = WebConfigurationManager.ConnectionStrings["cn"].ToString();
        SqlConnection cn = new SqlConnection(str);
        cn.Open();
        if (photo.HasFile)
        {
            HttpPostedFile pf = photo.PostedFile;
            if (pf.ContentType == "image/jpeg" || pf.ContentType == "image/png")
            {
                string path = Server.MapPath("image/" + photo.FileName);
                photo.SaveAs(path);
                string p1 = "~/image/" + photo.FileName;

                SqlCommand cmd = new SqlCommand("insert into patient(name,username,password,mobile,email,city,photo) values ('" + nm.Text + "','" + unm.Text + "','" + pass.Text + "','" + mno.Text + "','" + email.Text + "','" + city.Text + "','" + p1 + "')", cn);
                cmd.ExecuteNonQuery();
                cn.Close();

                nm.Text = "";
                unm.Text = "";
                pass.Text = "";
                email.Text = "";
                mno.Text = "";
            }
            else
            {
                Response.Write("File Type Error ....");
            }
        }
        else
        {
            Response.Write("File Not Selected ....");
        }
    }
}