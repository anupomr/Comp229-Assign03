using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Comp229_Assign03.Models;


namespace Comp229_Assign03
{
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.GetStudents();
        }

        protected void CourseDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
        private void GetStudents()
        {
            int CourseID = Convert.ToInt32(Request.QueryString["CourseID"]);
            //
            using (ControlsoContext db = new ControlsoContext())
            {
                // query the Student table using EF and LINQ
                var Students = (from allStudents in db.Students
                                join enrollment in db.Enrollments
                                on allStudents.StudentID equals enrollment.StudentID
                                where enrollment.CourseID == CourseID
                                select new { LastName = allStudents.LastName, FirstMidName = allStudents.FirstMidName, EnrollmentID = enrollment.EnrollmentID });
                CourseDetails.DataSource = Students.ToList();
                CourseDetails.DataBind();
            }

        }
    }
}