<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="GradeBook.Courses" MasterPageFile="~/Site.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Course</h2>
    <asp:EntityDataSource ID="StudentsEntityDataSource" runat="server" ConnectionString="name=GradeBookEntities" DefaultContainerName="GradeBookEntities" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="Course">
    </asp:EntityDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CourseId" DataSourceID="StudentsEntityDataSource">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Teacher" HeaderText="Teacher" SortExpression="Teacher" />
        </Columns>
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Add New Students</h2>
    <asp:EntityDataSource ID="StudentsEntityDataSource2" runat="server"
        EnableInsert="True" EntitySetName="Course" ConnectionString="name=GradeBookEntities" DefaultContainerName="GradeBookEntities" EnableFlattening="False">
    </asp:EntityDataSource>
    <asp:DetailsView ID="StudentsDetailsView" runat="server" 
        DataSourceID="StudentsEntityDataSource2" AutoGenerateRows="False"
        DefaultMode="Insert" DataKeyNames="CourseId">
        <Fields>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Teacher" HeaderText="Teacher" SortExpression="Teacher" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
