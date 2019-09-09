using KutuphaneDLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kutuphane
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        VeriIslem vi = new VeriIslem();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            if (fuYukle.FileName.Trim() == "" && imgKitap.ImageUrl == "")
            {
                lblNot.Text = "Fotoğraf Seçilmedi";
                return;
            }
            else if (fuYukle.FileName.Trim() != "")
            {
                if (fuYukle.FileName.Split('.')[1].ToUpper() != "PNG")
                    if (fuYukle.FileName.Split('.')[1].ToUpper() != "JPG")
                    {
                        lblNot.Text = "Seçilen nesne istenen Formatta değil!";
                        return;
                    }
            }

            string foto;
            if (imgKitap.ImageUrl != "")
            {
               // "~/ Foto / ";
                foto = imgKitap.ImageUrl;

            }
            else
            {
                var uid = Regex.Replace(Convert.ToBase64String(Guid.NewGuid().ToByteArray()), "[/+=]", "");
                foto = uid + ".jpg";
            }
            fuYukle.SaveAs(Server.MapPath(@"ImgKitap\") + foto);
            imgKitap.ImageUrl = "~/Foto/" + foto;

           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}