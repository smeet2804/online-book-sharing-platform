<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="chatList.aspx.cs" Inherits="OBS.chatList" %>

 <asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 32px;
        }
        .auto-style2 {
            margin-left: 34px;
        }
        .auto-style3 {
            margin-right: 0px;
           text-align: center;
        }
        .auto-style4 {
            width: 333px;
            border-right: 2px solid; 
        }
        .auto-style5 {
            width: 826px;
        }
        .auto-style6 {
            width: 1169px;
            height: 548px;
        }
    </style>
     <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content="Colorlib Templates"/>
    <meta name="author" content="Colorlib"/>
    <meta name="keywords" content="Colorlib Templates"/>

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all"/>
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all"/>
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet"/>

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all"/>
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all"/>

    <!-- Main CSS-->
    <link href="css/main2.css" rel="stylesheet" media="all"/>
    </asp:Content>
        <asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table id="table1" class="auto-style6">
        <tr>

         <td class="auto-style4">

        
             <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Contact List"></asp:Label>

        
            &nbsp;<br />
             <br />
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" CssClass="auto-style3" GridLines="None" Height="120px" Width="317px">
                 <Columns>
                     <asp:BoundField DataField="uname" HeaderText="Name" SortExpression="uname" />
                     <asp:ButtonField Text="Chat"  CommandName="Chat" />
                  </Columns>
                 <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                 <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" Height="75px" />
                 <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                 <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                 <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                 <SortedAscendingHeaderStyle BackColor="#594B9C" />
                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                 <SortedDescendingHeaderStyle BackColor="#33276A" />
             </asp:GridView>

              </td>

            <td class="auto-style5">


                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Displaying your chat with <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                <br />


                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="290px" Width="684px"  CssClass="auto-style1"  Rows="30" TextMode="MultiLine" Columns="3" Enabled="False"></asp:TextBox>


            </td>
        </tr>
        <tr>
            <td class="auto-style4">

            </td>
            <td class="auto-style5">

                &nbsp;

                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"  CssClass="auto-style2" Width="577px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Reply" Width="105px" AutoPostBack="True" BorderStyle="None"/>

            </td>
        </tr>
       
            </table>
    
</asp:Content>