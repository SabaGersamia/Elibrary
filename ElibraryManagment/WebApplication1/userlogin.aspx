<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="WebApplication1.userlogin" %>
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
    <div class="container centered-container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <img width="150px" src="imgs/user.png" alt="User Icon" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <h3>Member Login</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>
                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="Sign Up" PostBackUrl="usersignup.aspx" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <a href="homepage.aspx"><< Back to Home</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br /><br /><br /><br /><br /><br />
    </div>
</asp:Content>
