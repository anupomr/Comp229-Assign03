<%@ Page Title="Students" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="Comp229_Assign03.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <asp:GridView ID="StudentGridView" runat="server" AutoGenerateColumns="false"
                    cssClass="table table-bordered table-striped table-hover">
                    <Columns>
                        <asp:BoundField DataField="StudentID" HeaderText="Student Id" Visible="true" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" Visible="true" />
                        <asp:BoundField DataField="FirstMidName" HeaderText="First Name" Visible="true" />
                        <asp:BoundField DataField="EnrollmentDate" HeaderText="Enrollment Date" Visible="true" 
                            DataFormatString="{0:MMM dd, yyyy}"/>
                    </Columns>
                </asp:GridView>
                <asp:GridView ID="StudentCourseView" runat="server">
                    <Columns>
                        <asp:BoundField DataField="Title" HeaderText="Course Title" Visible="false" />

                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>

    
</asp:Content>
