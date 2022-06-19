<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="OBS.UserDashboard" %>


 <asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 81%;
            height: 190px;
        }
        .auto-style2 {
            width: 100%;
            height: 162px;
            border: none;
         
            background-color: aqua;
            border-radius: 10px;
        }
      
        .auto-style3 {
            text-align: center;
             margin: 50px;
        
        }
        .auto-style3 tr{
             margin: 50px;
        }
        .auto-style4 {
            text-align: center;
            height: 34px;
        }
        .dl-style td{
            padding: 30px;
            width: 300px;
        }   
        .dl-style
        {
             display: block;
             font-size: 1rem;
             font-weight: 400;
             line-height: 1.5;
             color: #495057;
             background-clip: padding-box;
             border-radius: .25rem;
             transition: none;
          
             background-color: #fff;
        }
        .auto-style5 {
             display: block;
             font-size: 1rem;
             font-weight: 400;
             line-height: 1.5;
             color: #495057;
             background-clip: padding-box;
             border-radius: .25rem;
             transition: none;
             border: 1px solid #ced4da;
             background-color: #fff;
          
              margin-left: 180px;
             margin-right: auto;
         }
        .element-box{
            margin: 50px;
        }
          .auto-style2 td, .auto-style2 tr{
            border: none;
             padding: 0px;
        }
       
         .auto-style6 {
             height: 32px;
         }
       
         .auto-style7 {
             height: 33px;
         }
       
    </style>
</asp:Content>
<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    <br />
    <br /><div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td >
                        <asp:TextBox ID="TextBox1" CssClass="auto-style5" PlaceHolder="Search" runat="server" AutoPostBack="true" Height="33px" Width="478px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                      &nbsp;</td>
                   </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style7">
                        </td>
                </tr>
                <tr>
                    <td><strong>Filter by category</strong></td>
                    <td>
                        <asp:DropDownList ID="catList" runat="server"  Width="338px">
                            <asp:ListItem Text="Select" Selected="True" />
                            <asp:ListItem Text="Action" Value="Action" />
                            <asp:ListItem Text="Adventure" Value="Adventure" />
                            <asp:ListItem Text="Comic Book" Value="Comic Book" />
                            <asp:ListItem Text="Self Help" Value="Self Help" />
                            <asp:ListItem Text="Motivation" Value="Motivation" />
                            <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                            <asp:ListItem Text="Wellness" Value="Wellness" />
                            <asp:ListItem Text="Crime" Value="Crime" />
                            <asp:ListItem Text="Drama" Value="Drama" />
                            <asp:ListItem Text="Fantasy" Value="Fantasy" />
                            <asp:ListItem Text="Horror" Value="Horror" />
                            <asp:ListItem Text="Poetry" Value="Poetry" />
                            <asp:ListItem Text="Personal Development" Value="Personal Development" />
                            <asp:ListItem Text="Romance" Value="Romance" />
                            <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                            <asp:ListItem Text="Suspense" Value="Suspense" />
                            <asp:ListItem Text="Thriller" Value="Thriller" />
                            <asp:ListItem Text="Art" Value="Art" />
                            <asp:ListItem Text="Autobiography" Value="Autobiography" />
                            <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                            <asp:ListItem Text="Health" Value="Health" />
                            <asp:ListItem Text="History" Value="History" />
                            <asp:ListItem Text="Math" Value="Math" />
                            <asp:ListItem Text="Textbook" Value="Textbook" />
                            <asp:ListItem Text="Science" Value="Science" />
                            <asp:ListItem Text="Travel" Value="Travel" />
                        </asp:DropDownList>

                        &nbsp; &nbsp;&nbsp;
                        <asp:Button ID="Button1" class="btn btn-dark" runat="server" OnClick="Button1_Click" Text="Apply" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
               
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style6">
                        <br />
                        <strong>
                        <asp:Label ID="errorLB" runat="server" Text="Label" Visible="false"></asp:Label>
                        </strong>
                        <br />
                        </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View All Books</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="bid" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" CssClass="dl-style" Height="445px">
            <ItemTemplate>
                <table border="1" class="auto-style2">
                    <tr>
                        <td class="auto-style4"><strong>Book Name:</strong>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("bname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <div class="m-1"><strong>Author:</strong>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("auname") %>'></asp:Label>
                        </div>
                                </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <div class="m-1">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imgname") %>' Height="150px" Width="150px" />
                        </div>
                                </td>
                    </tr>
                 
                    <tr>
                        <td class="auto-style3">
                            <div class="m-1">
                            <strong>Category: </strong>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("category") %>'></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                             <div class="m-1">
                            <asp:Button ID="Button2" runat="server" class="btn btn-light" Text="View Details" CommandArgument='<%# Eval("bid")%>' 

CommandName="viewdetails" />  </div>
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </ItemTemplate>
        </asp:DataList>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OBSConnectionString %>" SelectCommand="SELECT * FROM [sellBookDetails] WHERE ([uid] &lt;&gt; @uid)">
            <SelectParameters>
                <asp:SessionParameter Name="uid" SessionField="uid" Type="Int32" />
            </SelectParameters>
</asp:SqlDataSource>
        <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OBSConnectionString %>" SelectCommand="SELECT * FROM [sellBookDetails] WHERE (([uid] &lt;&gt; @uid) AND ([category] LIKE '%' + @category + '%') AND ([keywords] LIKE '%' + @keywords + '%'))">
     
        </asp:SqlDataSource>
    </asp:Content>