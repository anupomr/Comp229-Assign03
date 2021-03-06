﻿<%@ Page Title="Courses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="Comp229_Assign03.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">

                 <a href="Enrollments.aspx" class="btn btn-success btn-sm">
                   <i class="fa fa-plus"></i>Add Student
               </a>

                <asp:GridView ID="CourseDetails" runat="server" AutoGenerateColumns="false"
                    CssClass="table table-bordered table-striped table-hover" OnRowDeleting="CourseDetails_RowDeleting"
                    DataKeyNames="EnrollmentID">
                    <Columns>
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" Visible="true" />
                        <asp:BoundField DataField="FirstMidName" HeaderText="First Name" Visible="true" />
                        <asp:CommandField DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete"
                            ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />

                    </Columns>


                </asp:GridView>

                <a class="btn btn-primary btn-sm" href="Default.aspx">Home</a>
            </div>
        </div>
    </div>

</asp:Content>
