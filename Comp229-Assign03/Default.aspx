<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign03.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">

                 <h1>Student list</h1>
               <a href="AddStudent.aspx" class="btn btn-success btn-sm">
                   <i class="fa fa-plus"></i>Add Student
               </a>

                <asp:GridView ID="StudentGridView" runat="server" AutoGenerateColumns="false"
                    cssClass="table table-bordered table-striped table-hover" DataKeyNames="StudentID">
                    <Columns>
                     
                        <asp:BoundField DataField="StudentID" HeaderText="Student Id" Visible="false" />
                        <asp:HyperLinkField DataTextField="LastName" HeaderText="Last Name" Visible="true" 
                             DataNavigateUrlFields="StudentID" DataNavigateUrlFormatString="Students.aspx?StudentID={0}" />
                        
                        <asp:BoundField DataField="FirstMidName" HeaderText="First Name" Visible="true" />
                        <asp:BoundField DataField="EnrollmentDate" HeaderText="Enrollment Date" Visible="false" 
                            DataFormatString="{0:MMM dd, yyyy}"/>

                         <asp:HyperLinkField HeaderText="Courses" Text="<i class='fa fa-id-card-o fa-lg' aria-hidden='true'></i> Details "
                            NavigateUrl="~/Students.aspx.cs" ControlStyle-CssClass="btn btn-primary btn-sm"
                            runat="server" DataNavigateUrlFields="StudentID"
                            DataNavigateUrlFormatString="Students.aspx?StudentID={0}" />
                         
                        <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg' aria-hidden='true'></i> Update"
                            NavigateUrl="~/Update.aspx.cs" ControlStyle-CssClass="btn btn-primary btn-sm"
                            runat="server" DataNavigateUrlFields="StudentID"
                            DataNavigateUrlFormatString="Update.aspx?StudentID={0}" />
                    </Columns>
                </asp:GridView>
                
            </div>
        </div>
    </div>
    
</asp:Content>
