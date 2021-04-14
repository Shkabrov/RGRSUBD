using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RGRSUBD
{
    public partial class Doctors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HospitalDBDataContext db = new HospitalDBDataContext();

            Doctors member = new Doctors();

            member._d_Doctor_FIO = TextBox1.Text;
            member._d_Specialization = TextBox2.Text;
            member._d_Salary = TextBox3.Text;

            db.Doctors.InsertOnSubmit(member);
            db.SubmitChanges();

            Response.Redirect("/Doctors.aspx");
        }
    }
}