<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="GradeBook.Students" MasterPageFile="~/Site.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Student List</h2>
    <asp:EntityDataSource ID="StudentsEntityDataSource" runat="server" ConnectionString="name=GradeBookEntities" DefaultContainerName="GradeBookEntities" EnableFlattening="False" EntitySetName="Student" EnableDelete="True" EnableUpdate="True">
    </asp:EntityDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="StudentId" DataSourceID="StudentsEntityDataSource">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" ReadOnly="True" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
    </Columns>
</asp:GridView>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Add New Students</h2>
    <asp:EntityDataSource ID="StudentsEntityDataSource2" runat="server"
        EnableInsert="True" EntitySetName="Student" ConnectionString="name=GradeBookEntities" DefaultContainerName="GradeBookEntities">
    </asp:EntityDataSource>
    <asp:DetailsView ID="StudentsDetailsView" runat="server" 
        DataSourceID="StudentsEntityDataSource2" AutoGenerateRows="False"
        DefaultMode="Insert" DataKeyNames="StudentId">
        <Fields>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
