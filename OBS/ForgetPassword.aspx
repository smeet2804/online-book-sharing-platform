<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="OBS.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script>


        function validate() {
            var password1 = $("#passTB").val();
            var password2 = $("#confirmpassTB").val();



            if (password1 != password2) {
                $("#validatestatus").text("Password doesn't match");
            }
            else {
                 $("#validatestatus").text("Password doesmatch");
            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  
    <br />
    <br />
    <br />

   
   <div class="container">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px" height="150px" src="imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                          <label>Email-ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="emailTB" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
                        <label>Username</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="unameTB" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
                        <label>New Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="passTB" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                          <label>Confirm Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="confirmpassTB" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                          <asp:CompareValidator ID="CompareValidator1" runat="server" 
     ControlToValidate="confirmpassTB"
     CssClass="ValidationError"
     ControlToCompare="passTB"
     ErrorMessage="*Password doesn't match" 
     ForeColor="Red" />

                         <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Save Changes" OnClick="Button1_Click" />
                        </div>
                          <p ID="validatestatus" runat="server"></p>
                        <div class="form-group">
                           <a href="SignUp.aspx"><input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Sign Up" /></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
        
         </div>
      </div>
   </div>
</asp:Content>
