using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign03
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Debug.WriteLine(Page.Title + " loaded...");
            SetActivePage();
        }

        private void SetActivePage()
        {
            switch (Page.Title)
            {
                case "Home":
                    home.Attributes.Add("class", "active");
                    Page.Title = string.Format("Time-Tech College :: Home :: {0:d}", DateTime.Now);
                    break;
                case "Students":
                    Students.Attributes.Add("class", "active");
                    Page.Title = string.Format("Time-Tech College :: Students :: {0:d}", DateTime.Now);
                    break;
                case "Courses":
                    Courses.Attributes.Add("class", "active");
                    Page.Title = string.Format("Time-Tech College :: Courses :: {0:d}", DateTime.Now);
                    break;
                case "Update":
                    Update.Attributes.Add("class", "active");
                    Page.Title = string.Format("Time-Tech College :: Update :: {0:d}", DateTime.Now);
                    break;
                case "Enrollments":
                    Enrollments.Attributes.Add("class", "active");
                    Page.Title = string.Format("Time-Tech College :: Enrollments :: {0:d}", DateTime.Now);
                    break;
                case "About":
                    about.Attributes.Add("class", "active");
                    Page.Title = string.Format("Time-Tech College :: About :: {0:d}", DateTime.Now);
                    break;
                case "Contact":
                    contact.Attributes.Add("class", "active");
                    Page.Title = string.Format("Time-Tech College :: Contact :: {0:d}", DateTime.Now);
                    break;
            }
        }
    }
}