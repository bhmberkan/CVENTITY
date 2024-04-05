using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVENTITY.admin
{

    public partial class YetenekGüncelle : System.Web.UI.Page
    {
        CVENTITYEntities db = new CVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int x = int.Parse(Request.QueryString["ID"]);
                var deger = db.TBLYETENEKLER.Find(x);
                TextBox1.Text = deger.YETENEK;
                TextBox2.Text =deger.DERECE.ToString();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            int x = int.Parse(Request.QueryString["ID"]);
            var deger = db.TBLYETENEKLER.Find(x);
            deger.YETENEK = TextBox1.Text;
            deger.DERECE =byte.Parse(TextBox2.Text);
            db.SaveChanges();
            Response.Redirect("Yeteneklerim.aspx");



        }
    }
}