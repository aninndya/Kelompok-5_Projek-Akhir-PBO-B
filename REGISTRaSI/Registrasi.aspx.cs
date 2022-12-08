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
    public partial class Registrasi : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection rsConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            rsConnect.Open();
            string qry = "SELECT COUNT (*) FROM [registrasi] WHERE nama_pasien = '" + nama.Text + "'";
            SqlCommand query = new SqlCommand(qry, rsConnect);
            int cek = Convert.ToInt32(query.ExecuteScalar().ToString());
            rsConnect.Close();
            if (cek != 0)
            {
                Response.Write("Data Registrasi berhasil dimasukkan, masukkan data registrasi lain!");
            }
            else
            {
                rsConnect.Open();
                string insert = "INSERT INTO [registrasi] (nama_pasien,tempat_lahir,tanggal_lahir,no_telpon,poli,alamat,tanggal_kunjungan,jenis_kelamin)" +
                    " VALUES(@nama_pasien,@tempat_lahir,@tanggal_lahir,@no_telpon,@poli,@alamat,@tanggal_kunjungan,@jenis_kelamin)";
                SqlCommand insertquery = new SqlCommand(insert, rsConnect);
                insertquery.Parameters.AddWithValue("@nama_pasien", nama.Text);
                insertquery.Parameters.AddWithValue("@tempat_lahir", tempat_lahir.Text);
                insertquery.Parameters.AddWithValue("@tanggal_lahir", tanggal_lahir.Text);
                insertquery.Parameters.AddWithValue("@no_telpon", no_telpon.Text);
                insertquery.Parameters.AddWithValue("@poli", poli.SelectedItem.ToString());
                insertquery.Parameters.AddWithValue("@alamat", alamat.Text);
                insertquery.Parameters.AddWithValue("@tanggal_kunjungan", tanggal_kunjungan.Text);
                insertquery.Parameters.AddWithValue("@jenis_kelamin", jenis_kelamin.Text);
                insertquery.ExecuteNonQuery();
                rsConnect.Close();

            }
        }

        protected void poli_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}