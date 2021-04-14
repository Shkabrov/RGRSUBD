using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RGRSUBD
{
    public partial class Department2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HospitalDBDataContext db = new HospitalDBDataContext();

            Department member = new Department();

            member.dap_Department = TextBox1.Text;
            member.dap_Ward_number = Convert.ToInt32(TextBox2.Text);

            db.Department.InsertOnSubmit(member);
            db.SubmitChanges();

            Response.Redirect("/Department.aspx");
        }
    }
}