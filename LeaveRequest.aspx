<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMaster.master" AutoEventWireup="true" CodeFile="LeaveRequest.aspx.cs" Inherits="LeaveRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="False" CssClass="grid-view" 
    OnRowCommand="gridview1_RowCommand">
    <Columns>
        <asp:BoundField DataField="leave_id" HeaderText="Leave ID" />
        <asp:BoundField DataField="emp_id" HeaderText="Employee ID" />
        <asp:BoundField DataField="leave_type" HeaderText="Leave Type" />
        <asp:BoundField DataField="start_date" HeaderText="Start Date" DataFormatString="{0:yyyy-MM-dd}" />
        <asp:BoundField DataField="end_date" HeaderText="End Date" DataFormatString="{0:yyyy-MM-dd}" />
        <asp:BoundField DataField="reason" HeaderText="Reason" /> 
        <asp:BoundField DataField="status" HeaderText="Status" />
        <asp:BoundField DataField="request_date" HeaderText="Request Date" DataFormatString="{0:yyyy-MM-dd}" />
       
        <asp:TemplateField HeaderText="Actions">
            <ItemTemplate>
                <asp:Button ID="btnViewDetails" runat="server" CommandName="ViewDetails" 
                    CommandArgument='<%# Eval("leave_id") %>' Text="View Details" CssClass="view-btn" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:DetailsView ID="detailview1" runat="server" AutoGenerateRows="False" 
    CssClass="details-view" DataKeyNames="leave_id" OnItemCommand="detailview1_ItemCommand" Visible="False">
    <Fields>
        <asp:BoundField DataField="leave_id" HeaderText="Leave ID" />
        <asp:BoundField DataField="emp_id" HeaderText="Employee ID" />
        <asp:BoundField DataField="leave_type" HeaderText="Leave Type" />
        <asp:BoundField DataField="reason" HeaderText="Reason" />
        <asp:BoundField DataField="start_date" HeaderText="Start Date" DataFormatString="{0:yyyy-MM-dd}" />
        <asp:BoundField DataField="end_date" HeaderText="End Date" DataFormatString="{0:yyyy-MM-dd}" />
        <asp:BoundField DataField="status" HeaderText="Status" />
        
        <asp:BoundField DataField="request_date" HeaderText="Request Date" DataFormatString="{0:yyyy-MM-dd}" />
        <%--  --%>
        
        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <asp:Button ID="btnApprove" runat="server" CommandName="Approve" Text="Approve" CssClass="approve-btn" />
                <asp:Button ID="btnDeny" runat="server" CommandName="Deny" Text="Deny" CssClass="deny-btn" />
            </ItemTemplate>
        </asp:TemplateField>
    </Fields>
</asp:DetailsView>

</asp:Content>

