<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="OBS.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <br />
    <br />
    <br />


    <div class="container-fluid">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                 <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="nameTB" runat="server" placeholder="Full Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTB" Display="Dynamic" ErrorMessage="*Please enter name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                     </div>
                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="dateTB" runat="server" placeholder="DD-MM-YYYY" TextMode="Date"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nameTB" Display="Dynamic" ErrorMessage="*Please select date" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="pnoTB" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pnoTB" Display="Dynamic" ErrorMessage="*Please enter contact number" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" 
 ControlToValidate="pnoTB" ErrorMessage="*Please enter number in correct format" />
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="emailTB" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailTB" Display="Dynamic" ErrorMessage="*Please enter email-id" ForeColor="Red" Text="Error"></asp:RequiredFieldValidator>

                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control"  ID="ddl" runat="server">
                              <asp:ListItem Text="Select" Selected="True" />
                              <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                              <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                              <asp:ListItem Text="Assam" Value="Assam" />
                              <asp:ListItem Text="Bihar" Value="Bihar" />
                              <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Goa" Value="Goa" />
                              <asp:ListItem Text="Gujarat" Value="Gujarat" />
                              <asp:ListItem Text="Haryana" Value="Haryana" />
                              <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                              <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                              <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                              <asp:ListItem Text="Karnataka" Value="Karnataka" />
                              <asp:ListItem Text="Kerala" Value="Kerala" />
                              <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                              <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                              <asp:ListItem Text="Manipur" Value="Manipur" />
                              <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                              <asp:ListItem Text="Mizoram" Value="Mizoram" />
                              <asp:ListItem Text="Nagaland" Value="Nagaland" />
                              <asp:ListItem Text="Odisha" Value="Odisha" />
                              <asp:ListItem Text="Punjab" Value="Punjab" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Sikkim" Value="Sikkim" />
                              <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                              <asp:ListItem Text="Telangana" Value="Telangana" />
                              <asp:ListItem Text="Tripura" Value="Tripura" />
                              <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                              <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                              <asp:ListItem Text="West Bengal" Value="West Bengal" />
                           </asp:DropDownList>

  <asp:RequiredFieldValidator
             ID="RequiredFieldValidator9"
             runat="server"
             ControlToValidate="ddl"
             InitialValue="Select"
             ErrorMessage="*Please select state."
             ForeColor="Red"
            
             >
        </asp:RequiredFieldValidator>
   
          </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="cityTB" runat="server" placeholder="City"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="cityTB" Display="Dynamic" ErrorMessage="*Please enter city" ForeColor="Red"></asp:RequiredFieldValidator>
     </div>
                     </div>
                     <div class="col-md-4">
                        <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="pinTB" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                       
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="pinTB" Display="Dynamic" ErrorMessage="*Please enter pin-code" ForeColor="Red"></asp:RequiredFieldValidator>
    
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="addTB" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="addTB" Display="Dynamic" ErrorMessage="*Please enter address" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                     </div>
                  </div>


                   <div class="row">
                     <div class="col">
                        <label>Username</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="unameTB" runat="server" placeholder="Username" TextMode="SingleLine"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="unameTB" Display="Dynamic" ErrorMessage="*Please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
<asp:Label ID="passerror" runat="server" Text="<br> *Username already taken. Please select other username" Visible="false" ForeColor="Red"></asp:Label>

                        </div>
                     </div>
                  </div>


                   <div class="row">
                     <div class="col">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="passTB" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="passTB" Display="Dynamic" ErrorMessage="*Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                     </div>
                  </div>
      
                   

                     <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                        </div>

               </div>
            </div>
            <a href="Login.aspx"><< Back to Login</a><br><br>
         </div>
       </div>
   </div>
</asp:Content>