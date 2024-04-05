using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVENTITY.admin
{
    public partial class YetenekSil : System.Web.UI.Page
    {
        CVENTITYEntities db = new CVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"]);
            var sil = db.TBLYETENEKLER.Find(x);
            db.TBLYETENEKLER.Remove(sil);
            db.SaveChanges();
            Response.Redirect("Yeteneklerim.aspx");
        }
    }
}