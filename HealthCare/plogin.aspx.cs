using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;

public partial class plogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        string str = WebConfigurationManager.ConnectionStrings["cn"].ToString();
        SqlConnection cn = new SqlConnection(str);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select * from patient where username=@username and password=@password", cn);
        cmd.Parameters.AddWithValue("@username", unm.Text);
        cmd.Parameters.AddWithValue("@password  ", pass.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        int i = cmd.ExecuteNonQuery();
        cn.Close();
        if (dt.Rows.Count > 0)
        {
            Session["id"] = unm.Text;
            Response.Redirect("~/patient/profile.aspx");
            Session.RemoveAll();
        }
        else
        {
            Response.Write("");
        }  
    }
    protected void forgotpass_Click(object sender, EventArgs e)
    {
        Response.Redirect("pforgotpass.aspx");
    }
}