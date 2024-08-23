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

public partial class dlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        string str = WebConfigurationManager.ConnectionStrings["cn"].ToString();
        using (SqlConnection cn = new SqlConnection(str))
        {
            cn.Open();

            // Check for both user and admin in a single query.
            string query = @"SELECT * FROM doctor WHERE username = @username AND password = @password";

            SqlCommand cmd = new SqlCommand(query, cn);
            cmd.Parameters.AddWithValue("@username", unm.Text);
            cmd.Parameters.AddWithValue("@password", pass.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            // Determine user role and set session variables.
            if (dt.Rows.Count > 0)
            {
                DataRow row = dt.Rows[0];
                string role = row["status"].ToString();

                Session["id"] = unm.Text;
                Session["role"] = role; // Set user role

                if (role.Equals("admin", StringComparison.OrdinalIgnoreCase))
                {
                    Response.Redirect("~/admin/Default.aspx");
                }
                else
                {
                    Response.Redirect("~/doctor/profile.aspx");
                }
            }
            else
            {
                Response.Write("Invalid username or password.");
            }
        }

    }
    protected void forgotpass_Click(object sender, EventArgs e)
    {
        Response.Redirect("dforgotpass.aspx");
    }
}