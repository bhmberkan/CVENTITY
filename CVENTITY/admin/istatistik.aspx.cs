using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVENTITY.admin
{
    public partial class istatistik : System.Web.UI.Page
    {
        CVENTITYEntities db = new CVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = db.TBLYETENEKLER.Count().ToString();
            Label2.Text = db.TBLILETISIM.Count().ToString();

            //var ort = db.TBLYETENEKLER.Average(x => x.DERECE).ToString();
            //Label3.Text = Convert.ToDecimal(ort).ToString(); // ortalama değeri virgülden sonra uzatıyordu düzelttim

            Label3.Text = string.Format("{0:F2}",((float?)db.TBLYETENEKLER.Average(x => x.DERECE))).ToString();

            var enYuksekDereceYetenek = db.TBLYETENEKLER.OrderByDescending(x => x.DERECE).FirstOrDefault();
            string enYuksekYetenek = enYuksekDereceYetenek.YETENEK;
            Label4.Text = enYuksekYetenek;


        }
    }
}