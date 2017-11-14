using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using statements that are requiored to connect to EF(Entity FrameWork) DB
using Comp229_Assign03.Models;
using System.Web.ModelBinding;

namespace Comp229_Assign03
{
    public partial class Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /* If loading the Page for the first time 
             * Populate the Student grid view
             */
            if (!IsPostBack)
            {
                // Get the Student Data
                this.GetStudentsDetails();
                
            }
        }
        /// <summary>
        /// This method gets the Students data from the DB
        /// </summary>
        private void GetStudentsDetails()
        {
            int StudentID = Convert.ToInt32(Request.QueryString["StudentID"]);
            // Connect  to Entity FrameWork
            using (ControlsoContext db = new ControlsoContext())
            {
                //Query the Students Table using EF and LINQ
                var Students = (from allStudents in db.Students
                                where allStudents.StudentID == StudentID
                                select allStudents);
                // bind the result to the Student GridView
                StudentGridView.DataSource = Students.ToList();
                StudentGridView.DataBind();

                //Query the Course Table using EF and LINQ
                var CoursesDetails = (from allCourse in db.Courses
                                      join enrolment in db.Enrollments
                                      on allCourse.CourseID equals enrolment.CourseID
                                      where enrolment.StudentID == StudentID
                                      select new { CourseID= allCourse.CourseID, Title=allCourse.Title, Grade=enrolment.Grade, Credit=allCourse.Credits });
                // bind the result to the Course GridView
                StudentCourseView.DataSource = CoursesDetails.ToList();

                StudentCourseView.DataBind();
            }
        }
        
    }
}