using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class specialist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string str = WebConfigurationManager.ConnectionStrings["cn"].ToString();
        SqlConnection cn = new SqlConnection(str);
        cn.Open();

        SqlCommand cmd = new SqlCommand("insert into specialist(name) values ('" + spe.Text + "')", cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        spe.Text = "";

        Response.Redirect("specialist.aspx");
    }
}