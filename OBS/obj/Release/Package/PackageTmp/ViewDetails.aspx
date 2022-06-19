<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="ViewDetails.aspx.cs" Inherits="OBS.ViewDetails" %>

<asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 417px;
           
        }
        
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 292px;
        }
        .auto-style4 td{
            margin-left: 100px;
        }
        .auto-style4 {
            width: 500px;
            height: 33px;
        }
        .auto-style6 {
            width: 292px;
            height: 54px;
        }
        .auto-style7 {
            height: 54px;
        }
        </style>
    </asp:Content>
  <asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br />
      <br />
      <br />
        <div>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="bid" DataSourceID="SqlDataSource1" Height="100px" Width="801px" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4" colspan="2"><strong>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Book Name:
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("bname") %>'></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td  colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3" rowspan="7">&nbsp;<asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("imgname") %>' Width="300px" BorderStyle="Solid" BorderWidth="2px" />
                                &nbsp;</td>
                            
                            <td > <div class="ml-5"><strong>Author Name:</strong>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("auname") %>'></asp:Label>
                            </div>
                                </td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style4"><div class="ml-5"> <strong>Edition:</strong>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("edition") %>'></asp:Label>
                            </div></td>
                        </tr>
                        <tr>
                            <td > <div class="ml-5">
                                <strong>Description: </strong>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                            </div>
                                </td>
                        </tr>
                        <tr>
                            <td><div class="ml-5"> <strong>Category:</strong>&nbsp; 
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("category") %>'></asp:Label>
                           </div> </td>
                        </tr>
                        <tr>
                            <td><div class="ml-5"> <strong>Rent Price/Day:</strong>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("rp") %>'></asp:Label>
                          </div>  </td>
                        </tr>
                        <tr>
                            <td><div class="ml-5"> <strong>Sell Price:</strong>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("sp") %>'></asp:Label>
                           </div> </td>
                        </tr>
                        <tr>
                            <td><div class="ml-5"><strong>Location:</strong>
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("sp") %>'></asp:Label>
                            </div></td>
                        </tr>
                        <tr>
                            <td class="auto-style6"><strong>User: </strong>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("uname") %>'></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <div class="ml-5"><strong>Date of Posting:</strong>&nbsp;<asp:Label ID="Label11" runat="server" Text='<%# Eval("sp") %>'></asp:Label>
                            </div>
                                    </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2" colspan="2">
                                <asp:Button ID="Button1" class="btn btn-primary" runat="server" CommandArgument='<%# Eval("bid")%>' 

CommandName="chat" Text="Contact User" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OBSConnectionString %>" SelectCommand="SELECT * FROM [sellBookDetails] inner join [login] on sellBookDetails.uid=login.uid WHERE ([bid] = @bid)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="bid" QueryStringField="bid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </asp:Content>