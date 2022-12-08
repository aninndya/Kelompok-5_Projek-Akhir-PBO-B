using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace REGISTRaSI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection rsConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            rsConnect.Open();
            string cekPegawai = "SELECT COUNT (*) FROM [akun_pegawai] WHERE Email = '" + Email.Text + "'";
            SqlCommand query = new SqlCommand(cekPegawai, rsConnect);
            int jumlah = Convert.ToInt32(query.ExecuteScalar().ToString());
            rsConnect.Close();
            if (jumlah == 1)
            {
                rsConnect.Open();
                string passwordsql = "SELECT password FROM [akun_pegawai] WHERE Password = '" + Password.Text + "'";
                SqlCommand passquery = new SqlCommand(passwordsql, rsConnect);
                string password = passquery.ExecuteScalar().ToString();
                rsConnect.Close();
                if (password == Password.Text)
                {
                    //session
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Response.Write("Password salah!");
                }
            }
            else
            {
                Response.Write("Email tidak ditemukan!");
            }
        }
    }
}