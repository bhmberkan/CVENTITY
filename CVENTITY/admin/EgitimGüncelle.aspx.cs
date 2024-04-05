using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVENTITY.admin
{
    public partial class EgitimGüncelle : System.Web.UI.Page
    {
        CVENTITYEntities db = new CVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                var x = int.Parse(Request.QueryString["ID"]);
                var al = db.TBLHAKKIMDA.Find(x);
                TextBox1.Text = al.BILGILER;
                TextBox2.Text = al.EGITIM;
                TextBox3.Text = al.ISDENEYIMLERI;
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var x = int.Parse(Request.QueryString["ID"]);
            var al = db.TBLHAKKIMDA.Find(x);
            al.BILGILER = TextBox1.Text;
            al.EGITIM = TextBox2.Text;
            al.ISDENEYIMLERI = TextBox3.Text;
            db.SaveChanges();
            Response.Redirect("EgitimHayatim.aspx");
        }
    }
}