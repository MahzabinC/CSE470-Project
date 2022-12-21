<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profile2.aspx.cs" Inherits="HSPA.profile2" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-md-7">
            <div class="card">
                
               <div class="card-body">
                   <center>
                  <div class="row">
                     <div class="col">
                           <h6> USER INFORMATION<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="140px">
                               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                               <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                               <EditRowStyle BackColor="#999999" />
                               <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                               <Fields>
                                   <asp:BoundField DataField="user_name" HeaderText="NAME  :" SortExpression="user_name" />
                                   <asp:BoundField DataField="user_email" HeaderText="EMAIL ID:" SortExpression="user_email" />
                                   <asp:BoundField DataField="user_address" HeaderText="ADDRESS:" SortExpression="user_address" />
                                   <asp:BoundField DataField="user_division" HeaderText="DIVISION" SortExpression="user_division" />
                                   <asp:BoundField DataField="user_city" HeaderText="CITY" SortExpression="user_city" />
                                   <asp:BoundField DataField="user_phone" HeaderText="PHONE:" SortExpression="user_phone" />
                                   <asp:BoundField DataField="user_rating" HeaderText="RATING" SortExpression="user_rating" />
                                   
                               </Fields>
                               <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                               <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                               <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                               </asp:DetailsView>
&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:hspaDBConnectionString %>" SelectCommand="SELECT DISTINCT [user_name], [user_email], [user_address], [user_phone], [user_rating], [user_division], [user_city] FROM [users] WHERE ([user_email] = @user_email)">
                                   <SelectParameters>
                                       <asp:SessionParameter Name="user_email" SessionField="user2" Type="String" />
                                   </SelectParameters>
                               </asp:SqlDataSource>
                              </h6>
                           <p> Rate User:
                               <asp:RadioButton ID="RadioButton1" runat="server" Text="1" />
                               <asp:RadioButton ID="RadioButton2" runat="server" Text="2" />
                               <asp:RadioButton ID="RadioButton3" runat="server" Text="3" />
                               <asp:RadioButton ID="RadioButton4" runat="server" Text="4" />
                               <asp:RadioButton ID="RadioButton5" runat="server" Text="5" />
                               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go" />
                              </p>
                     </div>
                  </div>
                   </center>
                  <div class="row">
                     <div class="col">
                         <center>
                                 <hr> Post History
                             <br />
                         </center>
                        
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="post_catagory" HeaderText="post_catagory" SortExpression="post_catagory" />
                                <asp:BoundField DataField="job_name" HeaderText="job_name" SortExpression="job_name" />
                                <asp:BoundField DataField="job_salary" HeaderText="job_salary" SortExpression="job_salary" />
                                <asp:BoundField DataField="job_hour" HeaderText="job_hour" SortExpression="job_hour" />
                                <asp:BoundField DataField="job_describtion" HeaderText="job_describtion" SortExpression="job_describtion" />
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
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hspaDBConnectionString %>" SelectCommand="SELECT DISTINCT [post_catagory], [job_name], [job_salary], [job_hour], [job_describtion] FROM [post_info] WHERE ([posted_by] = @posted_by)">
                             <SelectParameters>
                                 <asp:SessionParameter Name="posted_by" SessionField="user2" Type="String" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                     </div>
                  </div>
               </div>
            </div>
         </div>
     <a href="viewservice2.aspx"><< Go Back</a><br><br>
 
</asp:Content>
