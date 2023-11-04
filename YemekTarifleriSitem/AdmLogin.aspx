<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdmLogin.aspx.cs" Inherits="AdmLogin" %>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

    <div class="container" style="margin-top:150px;">    
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <div class="panel-title" style="text-align:center">Admin Login</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#"></a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" role="form" runat="server">
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>                                        
                                <asp:TextBox ID="username" runat="server"  type="text" class="form-control"  placeholder="Kullanıcı Adı"></asp:TextBox>                                      
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>                                       
                                        <asp:TextBox ID="password" runat="server" type="password" class="form-control" placeholder="Şifre"></asp:TextBox>
                                    </div>
                                    

                                
                            <div class="input-group">
                                      <div class="checkbox">
                                        <label>
                                          <input id="login-remember" type="checkbox" name="remember" value="1"> Beni Hatırla
                                        </label>
                                      </div>
                                    </div>


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">                                 
                                      <asp:Button runat="server" Text="Giriş Yap" class="btn btn-success" OnClick="girisYap_Click" />
                                    </div>
                                </div>                               
                            </form>     



                        </div>                     
                    </div>  
        </div>
      