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
    public partial class Enrollments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            //use EF to conect to the server
            using (ControlsoContext db = new ControlsoContext())
            {
                //use the student model to create a new students object and
                // save a new record
                Enrollment addStudent = new Enrollment();

                int EnrollmentID = 0;

                if (Request.QueryString.Count > 0)//our URL has a StudentID in it
                {
                    // get the id from the URL
                    /*StudentID = Convert.ToInt32(Request.QueryString["StudentID"]);
                    //get the Current  student  from EF bd
                    newStudent = (from student in db.Students
                                  where student.StudentID == StudentID
                                  select student).FirstOrDefault();*/
                }
                // add form data th the  new student record
                addStudent.CourseID = Convert.ToInt32(CourseIDTextBox.Text);
                addStudent.StudentID = Convert.ToInt32(StudentIDTextBox.Text);
                addStudent.Grade = Convert.ToInt32(GradeTextBox.Text);


                //use  LINQ to ADO.NET to add / insert students into the db
                if (EnrollmentID == 0)
                {
                    db.Enrollments.Add(addStudent);
                }

                //save our changes -also updates and inserts
                db.SaveChanges();

                // Redirect back to the update Students page
                Response.Redirect("Default.aspx");
            }
        }
    }
}