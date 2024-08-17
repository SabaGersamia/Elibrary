<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="WebApplication1.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<style>
    .centered-container {
        margin: 0 auto;
        max-width: 400px;
    }
        
    .col-xs-12 {
        background-color: #2c3e50; 
        color: #ffffff;
        padding: 10px; 
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">
       <div class="row">
           <div class="col-md-6 mx-auto">
               <div class="card">
                   <div class="card-body">
                       <div class="row">
                           <div class="col">
                               <center>
                                   <img width="150px" src="imgs/admin.png" />

                               </center>
                           </div>
                       </div>
                       <div class="row">
                           <div class="col">
                               <center>
                                   <h3>Admin Panel</h3>

                               </center>
                           </div>
                   </div>
                           <div class="row">
                               <div class="col">
                                   <hr />
                               </div>
                          </div>

                           <div class="row">
                               <div class="col">
                                   <label>Admin ID</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID"></asp:TextBox>
                                   </div>
                                   <label>Password</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                   </div>
                                   <br />

                                   <div class="form-group">
                                      <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                   </div>

                               </div>
                       </div>
                       
               </div>
           </div>
               <a href="homepage.aspx"><< Back To Home</a><br /><br /><br /><br />
        </div>
    </div>
    <br /><br /><br /><br /><br /><br />
</div>


</asp:Content>
