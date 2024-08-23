using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class patient_appointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       string dnm = Request.QueryString["dnm"].ToString();
        Label1.Text = dnm;
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        string str = WebConfigurationManager.ConnectionStrings["cn"].ToString();
        SqlConnection cn = new SqlConnection(str);
        cn.Open();

        SqlCommand cmd = new SqlCommand("insert into booapp(doctorname,patientname,date,time,mobile) values ('" + Label1.Text + "','" + pnm.Text + "','" + date.Text + "','" + time.Text + "','" + mno.Text + "')", cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        Label1.Text = "";
        mno.Text = "";
        date.Text = "";
        pnm.Text = "";
        time.Text = "";
    }
}