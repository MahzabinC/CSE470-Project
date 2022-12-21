<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="HSPA.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h6>
                               <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                                   
                                   <ItemTemplate>
                                       <b>NAME        :</b>
                                       <asp:Label ID="user_nameLabel" runat="server" Text='<%# Bind("user_name") %>' />
                                       <br />
                                       <b>EMAIL ID    :</b>
                                       <asp:Label ID="user_emailLabel" runat="server" Text='<%# Bind("user_email") %>' />
                                       <br />
                                       <b>ADDRESS     :</b>
                                       <asp:Label ID="user_addressLabel" runat="server" Text='<%# Bind("user_address") %>' />
                                       <br />
                                       <b>DIVISION    :</b>
                                       <asp:Label ID="user_divisionLabel" runat="server" Text='<%# Bind("user_division") %>' />
                                       <br />
                                       <b>CITY        :</b>
                                       <asp:Label ID="user_cityLabel" runat="server" Text='<%# Bind("user_city") %>' />
                                       <br />
                                       <b>PHONE NUMBER:</b>
                                       <asp:Label ID="user_phoneLabel" runat="server" Text='<%# Bind("user_phone") %>' />
                                       <br />
                                       <b>USER RATING :</b>
                                       <asp:Label ID="user_ratingLabel" runat="server" Text='<%# Bind("user_rating") %>' />
                                       <br />
                                       

                                   </ItemTemplate>
                                   <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                               </asp:FormView>
                               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:hspaDBConnectionString %>" SelectCommand="SELECT [user_name], [user_email], [user_address], [user_phone], [user_rating], [user_division], [user_city] FROM [users] WHERE ([user_email] = @user_email)">
                                   <SelectParameters>
                                       <asp:SessionParameter Name="user_email" SessionField="email" Type="String" />
                                   </SelectParameters>
                               </asp:SqlDataSource>
                              </h6>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                         <center>
                             <h4>
                                 <hr> Post History
                             </h4>
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
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hspaDBConnectionString %>" SelectCommand="SELECT [post_catagory], [job_name], [job_salary], [job_hour], [job_describtion] FROM [post_info] WHERE ([posted_by] = @posted_by)">
                             <SelectParameters>
                                 <asp:SessionParameter Name="posted_by" SessionField="email" Type="String" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
