<%@ Page Title="Enrollments" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Enrollments.aspx.cs" Inherits="Comp229_Assign03.Enrollments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1>Add Student for a Course</h1>
                <h5> All fields are  required</h5>
                <br/>
                <div class="form-group">
                    <label class="control-label" for="CourseIDTextBox"> Course ID   </label> 
                    <asp:TextBox runat="server" CssClass="form-control" ID="CourseIDTextBox"
                        placeholder="Course ID" required="true">                   

                    </asp:TextBox>
                </div>

                <div class="form-group">
                    <label class="control-label" for="StudentIDTextBox"> Student ID   </label> 
                    <asp:TextBox runat="server" CssClass="form-control" ID="StudentIDTextBox"
                        placeholder="Student ID" required="true">  </asp:TextBox>
                </div>

                 <div class="form-group">
                    <label class="control-label" for="GradeTextBox"> Grade   </label> 
                    <asp:TextBox runat="server" CssClass="form-control" ID="GradeTextBox"
                        placeholder="Grade " required="true">  </asp:TextBox>
                </div>
                <div class="text-right">
                    <asp:Button Text="cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server" 
                         UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click"/>
                    <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server"
                        onClick="SaveButton_Click" />
                </div>

            </div>
        </div>
    </div>

</asp:Content>
