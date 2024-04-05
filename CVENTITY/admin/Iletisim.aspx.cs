using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVENTITY.admin
{
    public partial class Iletisim : System.Web.UI.Page
    {
        CVENTITYEntities db = new CVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var mesajlar = db.TBLILETISIM.ToList();
            Repeater1.DataSource = mesajlar;
            Repeater1.DataBind();
        }
    }
}