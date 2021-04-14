using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RGRSUBD
{
    public partial class Maps1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HospitalDBDataContext db = new HospitalDBDataContext();

            Maps member = new Maps();

            member.m_Map = Convert.ToInt32(TextBox1.Text);
            member.m_Surname = TextBox2.Text;
            member.m_Doctor_FIO = TextBox3.Text;
            member.m_Diagnosis = TextBox4.Text;
            member.m_Age = TextBox5.Text;
            member.m_Adress = TextBox6.Text;
            member.m_Profession = TextBox7.Text;
            member.m_Place_work = TextBox8.Text;
            member.m_Phone_number = TextBox9.Text;
            member.m_Characteristic = TextBox10.Text;
            member.m_Ward_number = Convert.ToInt32(TextBox11.Text);

            db.Maps.InsertOnSubmit(member);
            db.SubmitChanges();

            Response.Redirect("/Maps.aspx");
        }
    }
}