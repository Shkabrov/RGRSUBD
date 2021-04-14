using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RGRSUBD
{
    public partial class Department1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HospitalDBDataContext db = new HospitalDBDataContext();

            Wards member = new Wards();

            member.w_Ward_number = Convert.ToInt32(TextBox1.Text);
            member.w_Number_beds = Convert.ToInt32(TextBox2.Text);
            member.w_Doctor_FIO = TextBox3.Text;
            member.w_Staff = TextBox4.Text;


            db.Wards.InsertOnSubmit(member);
            db.SubmitChanges();

            Response.Redirect("/Wards.aspx");
        }
    }
}