using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary
{
    class Baglanti
    {
        public SqlConnection makeCon()
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-HHT3P26; Initial Catalog=Kutuphane;Integrated Security=True;");
            return con;
        }
    }
}
