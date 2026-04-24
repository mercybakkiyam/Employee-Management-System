<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMaster.master" AutoEventWireup="true" CodeFile="DeleteEmploye.aspx.cs" Inherits="DeleteEmployeeaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="search-container">
    <asp:TextBox ID="txtUsername" runat="server" CssClass="search-box" placeholder="Enter Employee Name"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" CssClass="search-btn" Text="Search" OnClick="btnSearch_Click" />
</div>



<!-- Message Label for User Not Found -->
<asp:Label ID="lblMessage" runat="server" CssClass="error-message" Visible="false"></asp:Label>


<asp:GridView ID="gvEmployee" runat="server" CssClass="custom-gridview" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="emp_id" HeaderText="Employee ID" />
        <asp:BoundField DataField="name" HeaderText="Username" />
        <asp:BoundField DataField="email" HeaderText="Email ID" />
        <asp:BoundField DataField="designation" HeaderText="Designation" />
        <asp:BoundField DataField="date_of_joining" HeaderText="Date of Joining" />

        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn-delete"
                    OnClientClick="return confirmDelete();"
                    OnClick="btnDelete_Click" CommandArgument='<%# Eval("emp_id") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>


<script type="text/javascript">
    function confirmDelete() {
        return confirm("Are you sure you want to delete this employee?");
    }
</script>

</asp:Content>

