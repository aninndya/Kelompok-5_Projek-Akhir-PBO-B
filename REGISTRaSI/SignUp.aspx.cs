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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection rsConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            rsConnect.Open();
            string qry = "SELECT COUNT (*) FROM [akun_pegawai] WHERE Nama = '" + Nama.Text + "'";
            SqlCommand query = new SqlCommand(qry, rsConnect);
            int cek = Convert.ToInt32(query.ExecuteScalar().ToString());
            rsConnect.Close();
            if (cek != 0)
            {
                Response.Write("Data Registrasi Akun berhasil dimasukkan");
            }
            else
            {
                rsConnect.Open();
                string insert = "INSERT INTO [akun_pegawai] (Nama,Email,Password) VALUES(@Nama,@Email,@Password)";
                SqlCommand insertquery = new SqlCommand(insert, rsConnect);
                insertquery.Parameters.AddWithValue("@Nama", Nama.Text);
                insertquery.Parameters.AddWithValue("@Email", Email.Text);
                insertquery.Parameters.AddWithValue("@Password", Password.Text);
                insertquery.ExecuteNonQuery();
                rsConnect.Close();
                Response.Redirect("Login.aspx");
            }

        }
    }
}