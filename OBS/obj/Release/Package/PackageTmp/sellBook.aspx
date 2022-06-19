<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sellBook.aspx.cs" Inherits="OBS.sellBook" %>

<asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">
     <!-- Required meta tags-->
  
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Apply for job by Colorlib</title>

    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
</asp:Content>
        <asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


            <div class="page-wrapper bg-blue p-t-100 p-b-50">
        <div class="wrapper wrapper--w900">
            <div class="card card-6">
                <div class="form-row">
                    <h2 class="title" style="color:black;">Add Book Details</h2>
                </div>

                       <div class="form-row">
                            <div class="name">Book Name</div>
                            <div class="value">
                           <asp:TextBox ID="bnameTB" runat="server" CssClass="input--style-6"></asp:TextBox>
                            </div>
                        </div>
                     <div class="form-row">
                            <div class="name">Author Name</div>
                            <div class="value">
                           <asp:TextBox ID="aunameTB" runat="server" CssClass="input--style-6"></asp:TextBox>
                            </div>
                        </div>
                     <div class="form-row">
                            <div class="name">Edition</div>
                            <div class="value">
                           <asp:TextBox ID="editionTB" runat="server" CssClass="input--style-6"></asp:TextBox>
                            </div>
                        </div>
                       <div class="form-row">
                            <div class="name">Sell Price</div>
                            <div class="value">
                                <div class="input-group" >
                                 <asp:TextBox ID="spTB" runat="server" CssClass="input--style-6"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="form-row">
                            <div class="name">Rent Price / Day</div>
                            <div class="value">
                                <div class="input-group">
                                 <asp:TextBox ID="rpTB" runat="server" CssClass="input--style-6"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        
                        <div class="form-row">
                            <div class="name">Description</div>
                            <div class="value">
                                <div class="input-group">
                                    
                                    <asp:TextBox id="descTB" runat="server" class="textarea--style-6" TextMode="MultiLine" Rows="2" name="description"></asp:TextBox>
                                    </div>
                            </div>
                        </div>

                     <div class="form-row">
                         
                        <div class="name">Category</div>
                           <div class="value">
                        <div class="input-group">
                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Single" >
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
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>
              
                        <div class="form-row">
                            <div class="name">Upload Images</div>
                            <div class="value">
                                <div class="input-group js-input-file">
                    
                                    
                                    <asp:FileUpload ID="FileUpload1" runat="server" /><label class="label--file" for="file"></label>
                                                                 </div>
                                <div class="label--desc">Upload your image of book. Max file size 2 MB</div>
                            </div>
                        </div>
                </div>
                <div class="card-footer">
                    <asp:Button ID="subBTN" CssClass="btn btn--radius-2 btn--blue-2" runat="server" Text="DONE" OnClick="subBTN_Click" Width="131px" />
                </div>
            </div>
        </div>
  

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>


    <!-- Main JS-->
    <script src="js/global.js"></script>

</asp:Content>