<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewservice2.aspx.cs" Inherits="HSPA.viewservice2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="post_catagory" DataValueField="post_catagory" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="269px">
        </asp:DropDownList>
        &nbsp;<asp:Button ID="Button1" runat="server" Text="Refresh" OnClick="Button1_Click" Width="81px" />
        &nbsp;&nbsp;
    </p>
    <p>
        Filter Job Type:<asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" DataSourceID="SqlDataSource5" DataTextField="job_name" DataValueField="job_name">
        </asp:CheckBoxList>
        &nbsp;<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:hspaDBConnectionString %>" SelectCommand="SELECT DISTINCT [job_name] FROM [post_info]"></asp:SqlDataSource>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hspaDBConnectionString %>" SelectCommand="SELECT DISTINCT [post_catagory] FROM [post_info]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:hspaDBConnectionString %>" SelectCommand="SELECT DISTINCT [job_name], [job_salary], [job_hour], [job_describtion], [posted_by] FROM [post_info] WHERE (([job_name] = @job_name) AND ([post_catagory] = @post_catagory))">
            <SelectParameters>
                <asp:ControlParameter ControlID="CheckBoxList1" Name="job_name" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="post_catagory" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="1379px" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="job_name" HeaderText="Job Name" SortExpression="job_name" />
                <asp:BoundField DataField="job_salary" HeaderText="Salary" SortExpression="job_salary" />
                <asp:BoundField DataField="job_hour" HeaderText="Work Hour" SortExpression="job_hour" />
                <asp:BoundField DataField="job_describtion" HeaderText="Job Describtion" SortExpression="job_describtion" />
                <asp:BoundField DataField="posted_by" HeaderText="Posted By" SortExpression="posted_by" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

        </asp:GridView>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="1379px" AllowPaging="True">

                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                   <asp:CommandField ShowSelectButton="True" />
                   <asp:BoundField DataField="job_name" HeaderText="Job Name" SortExpression="job_name" />
                   <asp:BoundField DataField="job_salary" HeaderText="Salary" SortExpression="job_salary" />
                   <asp:BoundField DataField="job_hour" HeaderText="Work Hour" SortExpression="job_hour" />
                   <asp:BoundField DataField="job_describtion" HeaderText="Job Describtion" SortExpression="job_describtion" />
                   <asp:BoundField DataField="posted_by" HeaderText="Posted By" SortExpression="posted_by" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:hspaDBConnectionString %>" SelectCommand="SELECT DISTINCT [job_name], [job_salary], [job_hour], [job_describtion], [posted_by] FROM [post_info] WHERE ([post_catagory] = @post_catagory)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="post_catagory" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:hspaDBConnectionString %>" SelectCommand="SELECT [job_name], [job_salary], [job_hour], [job_describtion], [posted_by] FROM [post_info]"></asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Width="1381px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="job_name" HeaderText="Job Name" SortExpression="job_name" />
                <asp:BoundField DataField="job_salary" HeaderText="Salary" SortExpression="job_salary" />
                <asp:BoundField DataField="job_hour" HeaderText="Work Hour" SortExpression="job_hour" />
                <asp:BoundField DataField="job_describtion" HeaderText="Job Describtion" SortExpression="job_describtion" />
                <asp:BoundField DataField="posted_by" HeaderText="Posted By" SortExpression="posted_by" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </asp:Panel>
</asp:Content>
