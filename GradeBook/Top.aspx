<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Top.aspx.cs" Inherits="GradeBook.Start" MasterPageFile="~/Site.Master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <h2>
        Welcome to GradeBook!
   </h2>
    <asp:EntityDataSource ID="StudentsEntityDataSource" runat="server" ConnectionString="name=GradeBookEntities1" DefaultContainerName="GradeBookEntities1" EnableFlattening="False" EntitySetName="View_1" EnableUpdate="True">
    </asp:EntityDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="FirstName,LastName,Name" DataSourceID="StudentsEntityDataSource">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" ReadOnly="True" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" ReadOnly="True" SortExpression="LastName" />
            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
            <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
            <asp:BoundField DataField="Attempt" HeaderText="Attempt" SortExpression="Attempt" />
        </Columns>
</asp:GridView>
</asp:Content>
