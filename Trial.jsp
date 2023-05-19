<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <title>Login & Signup Form</title>
    <link rel="stylesheet" href="Trial.css" />
  </head>
  <body>
    <section class="wrapper">
      <div class="form signup">
        <header>Signup</header>
        <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
		<form class="form" action="register" method="post" >
          <input type="text" id="username" name="UName" placeholder="Full name" required />
          <input type="text" id="email " name="UEmail" placeholder="Email address" required />
          <input type="password" id="password" name="UPass" placeholder="Password" required />
          <input  type="tel"  id="mobile-number" name="UCont" placeholder = "Mobile-no" required>
          <input type="date" id="birthdate" name="UBD" require>		
          <input type="submit" value="Next" />
        </form>
        
      </div>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
      <div class="form login">
        <header>Login</header>
         <form action="logintomain" method ="post" class="register-form">
          <input type="text" name="UEmail" placeholder="Email address" required />
          <input type="password" name="password" placeholder="Password" required />
          <a href="#">Forgot password?</a>
          <div class="form-group">
          <input type="submit" value="Login">
        </div>
        </form>
      </div>

      <script>
        const wrapper = document.querySelector(".wrapper"),
          signupHeader = document.querySelector(".signup header"),
          loginHeader = document.querySelector(".login header");

        loginHeader.addEventListener("click", () => {
          wrapper.classList.add("active");
        });
        signupHeader.addEventListener("click", () => {
          wrapper.classList.remove("active");
        });
      </script>
    </section>
  </body>
</html>