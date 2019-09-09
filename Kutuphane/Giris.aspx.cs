using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KutuphaneDLL;

namespace Kutuphane
{
    public partial class Giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            if (txtKullaniciAd.Text != "" && txtParola.Text != "")
            {
                VeriIslem vi = new VeriIslem();
               
                if (vi.dt(Sorgular.Giris(txtKullaniciAd.Text, txtParola.Text)).Rows.Count != 0)
                {
                    lblAciklama.Text = "Hoşgeldiniz '"+ txtKullaniciAd.Text + "'";

                    //Thread.Sleep(5000);
                    Response.Redirect("Anasayfa.aspx");
                }
                else
                {
                    lblAciklama.Text = "Kullanici adi veya Şifre hatalı";
                }

            }
            else
            {

                lblAciklama.Text = "Kullanici adi veya Şifre boş bırakılamaz";    
            }
        }
    }
}