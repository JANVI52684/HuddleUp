<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>HomePage</title>
    <link rel="stylesheet" href="MainPg.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
      html,
      body {
        margin: 0;
        padding: 0;
        height: 100%;
      }
  
      .video-bg {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100vh;
        object-fit: cover;
        z-index: -1;
      }
  
      .center {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
      }
    </style>
  </head>
  
<body>
  <video class="video-bg" autoplay loop muted>
    <source src="main.mp4" type="video/mp4">
  </video>
  <nav>
    <div class="navbar">
      <div class="logo"><a href="#">Huddle Up</a></div>
      <ul class="nav-links">
       
        <li><a href="AboutUs.html" target="_blank">About Us</a></li>
        
      </ul>
      <div class="appearance">
        <div class="light-dark">
          <i class="btn fas fa-moon" data-color="#e4e6eb #e4e6eb #24292D #24292D #242526"></i>
        </div>
        <div class="color-icon">
          <div class="icons">
            <i class="fas fa-palette"></i>
            <i class="fas fa-sort-down arrow"></i>
          </div>
          <div class="color-box">
            <h3>Color Switcher</h3>
            <div class="color-switchers">
              <button class="btn blue active" data-color="#fff #24292d #4070f4 #0b3cc1 #F0F8FF"></button>
              <button class="btn orange" data-color="#fff #242526 #F79F1F #DD8808 #fef5e6"></button>
              <button class="btn purple" data-color="#fff #242526 #8e44ad #783993 #eadaf1"></button>
              <button class="btn green" data-color="#fff #242526 #3A9943 #2A6F31 #DAF1DC"></button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </nav>
  <section class="home-content">
    <div class="texts">
      <h2 class="text">HuddleUp—The people platform.  </h2>
      <h3 class="text"> <span>Where interests become Friendships</span></h3>
      <p>Your new community is waiting for you. </p>
      <div class="button">
      <a href="Trial.jsp" target="_blank">Login
      <i class="fas fa-location-arrow"></i></a>
    </div>
  </section>

  

  <script>
  // Js code to make color box enable or disable
  let colorIcons = document.querySelector(".color-icon"),
  icons = document.querySelector(".color-icon .icons");

  icons.addEventListener("click" , ()=>{
    colorIcons.classList.toggle("open");
  })

  // getting all .btn elements
  let buttons = document.querySelectorAll(".btn");

  for (var button of buttons) {
    button.addEventListener("click", (e)=>{ //adding click event to each button
      let target = e.target;

      let open = document.querySelector(".open");
      if(open) open.classList.remove("open");

      document.querySelector(".active").classList.remove("active");
      target.classList.add("active");

      // js code to switch colors (also day night mode)
      let root = document.querySelector(":root");
      let dataColor = target.getAttribute("data-color"); //getting data-color values of clicked button
      let color = dataColor.split(" "); //splitting each color from space and make them array

      //passing particular value to a particular root variable
      root.style.setProperty("--white", color[0]);
      root.style.setProperty("--black", color[1]);
      root.style.setProperty("--nav-main", color[2]);
      root.style.setProperty("--switchers-main", color[3]);
      root.style.setProperty("--light-bg", color[4]);

      let iconName = target.className.split(" ")[2]; //getting the class name of icon

      let coloText = document.querySelector(".home-content span");

      if(target.classList.contains("fa-moon")){ //if icon name is moon
        target.classList.replace(iconName, "fa-sun") //replace it with the sun
        colorIcons.style.display = "none";
        coloText.classList.add("darkMode");
      }else if (target.classList.contains("fa-sun")) { //if icon name is sun
        target.classList.replace("fa-sun", "fa-moon"); //replace it with the sun
        colorIcons.style.display = "block";
        coloText.classList.remove("darkMode");
        document.querySelector(".btn.blue").click();
      }
    });
  }
 </script>
</body>
</html>