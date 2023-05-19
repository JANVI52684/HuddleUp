<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link rel="stylesheet" href="Trial.css" />
   <title>Interest</title>
  </head>
  <body>
    <section class="wrapper">
      <div class="form signup">
        <header>Signup</header>
       <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
		<form class="form" action="interest" method="post" >
         
          <input type="text" id="email " name="UEmail" placeholder="Email address" required />
        
          <select id="interest1" name="interest1" required>
			<option value="">Interest 1</option>
			<option value="movie">Movies</option>
			<option value="politics">Politics</option>
			<option value="books">Books</option>
            <option value="sports">Sports</option>
            <option value="food">Food</option>
            <option value="travel">Travel</option>
		</select>
        
          <select id="interest2" name="interest2" required>
			<option value="">Interest 2</option>
			<option value="movie">Movies</option>
			<option value="politics">Politics</option>
			<option value="books">Books</option>
            <option value="sports">Sports</option>
            <option value="food">Food</option>
            <option value="travel">Travel</option>
		</select>
        <select id="interest3" name="interest3" required>
			<option value="">Interest 3</option>
			<option value="movie">Movies</option>
			<option value="politics">Politics</option>
			<option value="books">Books</option>
            <option value="sports">Sports</option>
            <option value="food">Food</option>
            <option value="travel">Travel</option>
            </select>
            
			<label for="instaid"></label>
		<input type="text" id="instaid" name="instaID" placeholder="Instagram Id" required>
        <br>
        <br>
        <input type="submit" value="Create Account">
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