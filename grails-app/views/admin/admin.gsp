<!DOCTYPE html>
<html lang="en">
<title>Admin</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif;}
.w3-sidebar {
  z-index: 3;
  width: 250px;
  top: 43px;
  bottom: 0;
  height: inherit;
}
#myFooter {
    position: fixed;
    bottom: 0px;
    width: 100%;
}
</style>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-theme w3-top w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-right w3-hide-large w3-hover-white w3-large w3-theme-l1" href="javascript:void(0)" onclick="w3_open()"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-theme-l1">Profile</a>
    <a href="/login" class="w3-bar-item w3-button w3-hide-small w3-hide-medium w3-hover-white w3-right-align">logout</a>
  </div>
</div>

<!-- Sidebar -->
<nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" id="mySidebar">
  <h4 class="w3-bar-item"><b>Menu</b></h4>
  <a class="w3-bar-item w3-button w3-hover-black" href="/admin/index">User List</a>
</nav>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3-main" style="margin-left:250px">
  <div class="w3-modal-content w3-animate-zoom" style="padding:32px">
      <g:form class="w3-container w3-white w3-right" style="padding:20px" action="search">
        <g:textField name="searchUser" required="true" style="padding:3px"/><g:actionSubmit value="Search"/>
      </g:form>
      <div class="w3-container w3-white w3-center">
        <h2 class="w3-wide">User List</h2>
        <table class="w3-table">
          <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Date of Birth</th>
            <th>phone</th>
          </tr>

          <g:each in="${userList}" var="user">
              <tr>   
                  <td><span>${user.firstName}</span></td>
                  <td><span>${user.lastName}</span></td>
                  <td><span>${user.email}</span></td>
                  <td><span>${user.dateOfBirth}</span></td>
                  <td><span>${user.phone}</span></td>           
              </tr>
          </g:each>
        </table>
    </div>
</div>

  <footer id="myFooter">
    <div class="w3-container w3-theme-l1">
    </div>
  </footer>
</div>

</body>
</html>
