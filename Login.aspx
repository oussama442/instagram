<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="clone.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login • Instagram</title>
  
  <!-- Import Billabong Font (Real Instagram Font) -->
  <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
  <link href="https://fonts.cdnfonts.com/css/billabong" rel="stylesheet">
  
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: Arial, sans-serif;
    }

    body, input, button, a {
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
    }

    body {
      background-color: #fafafa;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
    }

    .container {
      background: #fff;
      border: 1px solid #dbdbdb;
      padding: 40px;
      width: 100%;
      max-width: 350px;
      display: flex;
      flex-direction: column;
      align-items: center;
      margin-bottom: 10px;
    }

    .logo {
      font-family: 'Pacifico', cursive;
      font-size: 48px;
      margin-bottom: 30px;
    }

    input {
      width: 100%;
      padding: 9px;
      margin: 5px 0;
      background: #fafafa;
      border: 1px solid #dbdbdb;
      border-radius: 3px;
    }

    .btn {
      width: 100%;
      padding: 8px;
      background-color: #0095f6; /* Instagram blue color */
      color: white;
      border: none;
      border-radius: 8px;
      font-weight: bold;
      margin-top: 10px;
      cursor: pointer;
    }

    .or-divider {
      display: flex;
      align-items: center;
      width: 100%;
      margin: 20px 0;
    }

    .or-divider::before,
    .or-divider::after {
      content: "";
      flex: 1;
      height: 1px;
      background: #dbdbdb;
    }

    .or-divider span {
      margin: 0 10px;
      color: #8e8e8e;
      font-size: 13px;
      font-weight: 600;
    }

    .facebook-login {
      color: #385185;
      font-weight: bold;
      margin-top: 10px;
      display: flex;
      align-items: center;
      font-size: 14px;
      cursor: pointer;
    }

    .facebook-login img {
      width: 20px;
      margin-right: 8px;
    }

    .forgot-password {
      color: #00376b;
      font-size: 12px;
      margin-top: 15px;
      text-decoration: none;
    }

    .signup-container {
      background: #fff;
      border: 1px solid #dbdbdb;
      padding: 20px;
      text-align: center;
      width: 100%;
      max-width: 350px;
    }

    .signup-container a {
      color: #0095f6;
      text-decoration: none;
      font-weight: bold;
    }

    .get-the-app {
      margin-top: 20px;
      text-align: center;
      font-size: 14px;
    }

    .app-buttons {
      margin-top: 15px;
      display: flex;
      justify-content: center;
      gap: 8px;
    }

    .app-buttons img {
      height: 40px;
    }

    @media (max-width: 600px) {
      .container, .signup-container {
        border: none;
        background: transparent;
      }
    }
  </style>
</head>

<body>
  <div class="container">
    <div class="logo">Instagram</div>
    <form method="post" runat="server">
      <asp:TextBox ID="Username" CssClass="form-input" placeholder="Phone number, username, or email" runat="server" Required="true" />
      <asp:TextBox ID="Password" CssClass="form-input" placeholder="Password" runat="server" TextMode="Password" Required="true" />
      <asp:Button ID="LoginButton" Text="Log In" CssClass="btn" OnClick="LoginButton_Click" runat="server" />
    </form>

    <div class="or-divider">
      <span>OR</span>
    </div>

    <div class="facebook-login">
      <img src="https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg" alt="Facebook logo">
      Log in with Facebook
    </div>

    <a href="#" class="forgot-password">Forgot password?</a>
  </div>

  <div class="signup-container">
    Don't have an account? <a href="#">Sign up</a>
  </div>

  <div class="get-the-app">
    Get the app.
    <div class="app-buttons">
      <a href="#"><img src="https://upload.wikimedia.org/wikipedia/commons/7/78/Google_Play_Store_badge_EN.svg" alt="Get it on Google Play"></a>
      <a href="#"><img src="https://developer.microsoft.com/en-us/store/badges/images/English_get-it-from-MS.png" alt="Get it from Microsoft"></a>
    </div>
  </div>
</body>
</html>
