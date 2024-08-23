using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class doctor_appointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["id"] == null)
            {
                Label1.Text = "Guest";
            }
            else
            {
                string uname = Session["id"].ToString();
                string cn = WebConfigurationManager.ConnectionStrings["cn"].ToString();
                SqlConnection con= new SqlConnection(cn);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from doctor where username='"+uname+"'",con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Label1.Text = dr[1].ToString();
                }
            }
        }
    }
}