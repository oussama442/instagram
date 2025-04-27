<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="clone.AdminPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Page</title>
  <style>
    table {
      width: 100%;
      border-collapse: collapse;
    }

    table, th, td {
      border: 1px solid black;
    }

    th, td {
      padding: 8px;
      text-align: left;
    }

    th {
      background-color: #f2f2f2;
    }
  </style>
</head>
<body>

  <h2>Admin Panel - Users List</h2>

  <!-- Add the form tag to make the page server-side capable -->
  <form id="form1" runat="server">
    <table>
      <thead>
        <tr>
          <th>Username</th>
          <th>Password</th>
        </tr>
      </thead>
      <tbody>
        <!-- Repeater control to display user data -->
        <asp:Repeater ID="UserRepeater" runat="server">
          <ItemTemplate>
            <tr>
              <td><%# Eval("Username") %></td>
              <td><%# Eval("Password") %></td>
            </tr>
          </ItemTemplate>
        </asp:Repeater>
      </tbody>
    </table>
  </form>

</body>
</html>
