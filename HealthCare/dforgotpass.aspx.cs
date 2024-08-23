using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class patient_dforgotpass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        string s = WebConfigurationManager.ConnectionStrings["cn"].ToString();
        SqlConnection cn = new SqlConnection(s);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select * from doctor where mobile='" + pass.Text.ToString() + "'",cn);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            string p = "Your Password is :" + dr[3].ToString();
           
            Response.Write("<script language='javascript'>alert('" + p + "');window.location='dlogin.aspx';</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Invalid Username Or Email');window.location='dforgotpass.aspx';</script>");
        }
    }
}