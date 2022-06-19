
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="yourAds.aspx.cs" Inherits="OBS.yourAds" %>

 <asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">
     
     <style type="text/css">
         .auto-style1 {
            
         }
         .GridViewEditRow input[type=text] {width:150px;} /* size textboxes */
.GridViewEditRow select {width:150px;} /* size drop down lists */
.GridViewEditRow img {width:150px;}
     </style>
     
</asp:Content>
        <asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <br />
            <br />
            <br />
     <div>


            

         <table>
             <tr>
                 <td>
                     <div class="ml-5" >

         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="True"

        OnRowCancelingEdit="GridView1_RowCancelingEdit" DataKeyNames="bid" CellPadding="4"

        OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" ForeColor="#333333" CssClass="auto-style1" OnRowDeleting="GridView1_RowDeleting" Width="980px" >
              <EditRowStyle CssClass="GridViewEditRow" />
        <Columns>

        <asp:TemplateField HeaderStyle-Width="150px">

            <ItemTemplate>

                <asp:LinkButton ID="LkB1" runat="server" CommandName="Edit">Edit</asp:LinkButton>

            </ItemTemplate>

            <EditItemTemplate>

                <asp:LinkButton ID="LkB2" runat="server" CommandName="Update">Update</asp:LinkButton>

                <asp:LinkButton ID="LkB3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                  <asp:LinkButton ID="LkB4" runat="server" CommandName="Delete">Delete</asp:LinkButton>
            </EditItemTemplate>

        </asp:TemplateField>

 

        <asp:TemplateField HeaderText ="Book Name" HeaderStyle-Width="200px">

            <ItemTemplate>

                <asp:Label ID="Label1" runat="server" Text='<%# Eval("bname" ) %>'></asp:Label>

            </ItemTemplate>

            <EditItemTemplate>

                <asp:TextBox ID="txt1" runat="server" Text='<%# Eval("bname" ) %>'></asp:TextBox>

            </EditItemTemplate>

        </asp:TemplateField>

               <asp:TemplateField HeaderText ="Author Name" HeaderStyle-Width="200px">

            <ItemTemplate>

                <asp:Label ID="Label2" runat="server" Text='<%# Eval("auname" ) %>'></asp:Label>

            </ItemTemplate>

            <EditItemTemplate>

                <asp:TextBox ID="txt2" runat="server" Text='<%# Eval("auname" ) %>'></asp:TextBox>

            </EditItemTemplate>

        </asp:TemplateField>

               <asp:TemplateField HeaderText ="Edition" HeaderStyle-Width="200px">

            <ItemTemplate>

                <asp:Label ID="Label3" runat="server" Text='<%# Eval("edition") %>'></asp:Label>

            </ItemTemplate>

            <EditItemTemplate>

                <asp:TextBox ID="txt3" runat="server" Text='<%# Eval("edition" ) %>'></asp:TextBox>

            </EditItemTemplate>

        </asp:TemplateField>
                 <asp:TemplateField HeaderText ="Selling Price" HeaderStyle-Width="200px">

            <ItemTemplate>

                <asp:Label ID="Label4" runat="server" Text='<%# Eval("sp" ) %>'></asp:Label>

            </ItemTemplate>

            <EditItemTemplate>

                <asp:TextBox ID="txt4" runat="server" Text='<%# Eval("sp" ) %>'></asp:TextBox>

            </EditItemTemplate>

        </asp:TemplateField>

                   <asp:TemplateField HeaderText ="Rent Price" HeaderStyle-Width="200px">

            <ItemTemplate>

                <asp:Label ID="Label5" runat="server" Text='<%# Eval("rp" ) %>'></asp:Label>

            </ItemTemplate>

            <EditItemTemplate>

                <asp:TextBox ID="txt5" runat="server" Text='<%# Eval("rp" ) %>'></asp:TextBox>

            </EditItemTemplate>

        </asp:TemplateField>


                   <asp:TemplateField HeaderText ="Description" HeaderStyle-Width="200px">

            <ItemTemplate>

                <asp:Label ID="Label6" runat="server" Text='<%# Eval("description" ) %>'></asp:Label>

            </ItemTemplate>

            <EditItemTemplate>

                <asp:TextBox ID="txt6" runat="server" TextMode="MultiLine" Rows="5" Text='<%# Eval("description" ) %>'></asp:TextBox>

            </EditItemTemplate>

        </asp:TemplateField>
              

  

        <asp:TemplateField HeaderText ="Image" HeaderStyle-Width="200px">

            <ItemTemplate>

                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imgname" ) %>'

                     Height="100px" Width="100px" />

            </ItemTemplate>

            <EditItemTemplate >

                <asp:Image ID="img_user" runat="server" ImageUrl='<%# Eval("imgname" ) %>'

                     Height="100px" Width="100px" /><br />

                <asp:FileUpload Height="80px" Width="200px" ID="FileUpload1" runat="server" />

            </EditItemTemplate>

        </asp:TemplateField>

        </Columns> 

        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />

        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />

    </asp:GridView>
                     </div>

     </td>
</tr>            
         </table>


        </div>
</asp:Content>