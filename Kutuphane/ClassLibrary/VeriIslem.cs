using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary
{
    public class VeriIslem
    {
        public DataTable dataTable(string sorgu)
        {
            DataTable dt = new DataTable();
            try
            {

                Baglanti con = new Baglanti();
                SqlDataAdapter da = new SqlDataAdapter(sorgu, con.makeCon());

                da.Fill(dt);

            }
            catch (SqlException)
            {
                
            }
            return dt;
        }
       

    }
}
