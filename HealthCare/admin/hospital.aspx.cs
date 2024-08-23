using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class admin_hospital : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Check if user is authenticated
            if (Session["id"] == null || Session["role"] == null)
            {
                Response.Redirect("../Default.aspx"); // Redirect to login if session is not valid
                return;
            }

            // Retrieve session information
            string userId = Session["id"].ToString();
            string role = Session["role"].ToString();

            // Check if the user is an admin
            if (!role.Equals("admin", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("~/Default.aspx"); // Redirect to login if user is not an admin
                return;
            }

        }
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        string str = WebConfigurationManager.ConnectionStrings["cn"].ToString();
        SqlConnection cn = new SqlConnection(str);
        cn.Open();

        SqlCommand cmd = new SqlCommand("insert into hospital(name,address,contact,city) values ('" + nm.Text + "','" + addr.Text + "','" + cno.Text + "','" + city.Text + "')", cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        Response.Write("Record Inserted .....");
        nm.Text = "";
        addr.Text = "";
        cno.Text = "";
        Response.Redirect("hospital.aspx");
    }
}