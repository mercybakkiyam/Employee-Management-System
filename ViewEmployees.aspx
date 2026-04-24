<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMaster.master" AutoEventWireup="true" CodeFile="ViewEmployees.aspx.cs" Inherits="ViewEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="False"
    DataKeyNames="emp_id" AllowPaging="True" PageSize="5"
    CssClass="gridview-style" OnPageIndexChanging="gvEmployees_PageIndexChanging"
    OnRowCommand="gvEmployees_RowCommand" >
    <Columns>
        <asp:BoundField DataField="emp_id" HeaderText="ID" />
        <asp:BoundField DataField="name" HeaderText="Name" />
        <asp:BoundField DataField="email" HeaderText="Email" />
        <asp:BoundField DataField="phone_number" HeaderText="Phone" />
        <asp:BoundField DataField="designation" HeaderText="Designation" />
        <asp:BoundField DataField="date_of_joining" HeaderText="Joining Date" DataFormatString="{0:yyyy-MM-dd}" />
        <asp:BoundField DataField="salary" HeaderText="Salary" />

        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <asp:Button ID="btnEdit" runat="server" Text="Edit"  CssClass="edit-btn"
                    CommandName="EditEmployee" CommandArgument='<%# Eval("emp_id") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>



</asp:Content>

