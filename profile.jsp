<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>Profile</title>
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
  
  
      .center {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
      }
      
      *{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
.main{
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  background-image: url(images/back.jpg);
  background-position: center;
  background-size: cover;
}
.profile-card{
  display: flex;
  flex-direction: column;
  align-items: center;
  max-width: 400px;
  width: 100%;
  border-radius: 25px;
  padding: 30px;
  border: 1px solid #ffffff40;
  box-shadow: 0 5px 20px rgba(0,0,0,0.4);
}

.data{
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 15px;
}
.data h2{
  font-size: 33px;
  font-weight: 600;
}
span{
  font-size: 18px;
}
.row{
  display: flex;
  align-items: center;
  margin-top: 30px;
}
.row .info{
  text-align: center;
  padding: 0 20px;
  padding-bottom: 10px;
  
}
      
		.button a:hover{
  background: var(--switchers-main);
}
.home-content{
 position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100vh;
        object-fit: cover;
        z-index: -1;
}
.profile-pic img {
  object-fit: cover;
    width: 100%;
    height: 100%;
}
.profile-pic {
		background-img:DP.jpg;
			 width: 150px;
		    height: 150px;
		    border-radius: 50%;
		    overflow: hidden;
			algin: center;
			border-radius: 50%;
			object-fit: cover;
			margin-right: 0 auto;
		}

		.profile-info {
			display: flex;
			flex-direction: column;
		}
.button a{
  color: #fff;
   text-decoration: none;
  margin: 0 auto;
  padding: 8px 25px;
  margin-top:10px;
  border-radius: 25px;
  font-size: 18px;
  white-space: nowrap;
  background: linear-gradient(to left, #33ccff 0%, #ff99cc 100%);

}
.button a i {
  font-size: 16px;
  
}
    </style>
  </head>
  
<body>
  <nav>
    <div class="navbar">
      <div class="logo"><a href="MainPg.jsp">Huddle Up</a></div>
      <ul class="nav-links">
       <li><a href="MainPg.jsp" target="_blank">Home</a></li>
        <li><a href="aboutus.html" target="_blank">About Us</a></li>
        
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
 <br> <br> <br> <br> <br> <br> <br>
 <%@ page import="java.sql.*" %>
<%
//Connect to the database
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/budies","root","JanVi@31");

// Retrieve user data from the database
java.sql.Statement statement = connection.createStatement();

HttpSession session1 = request.getSession();
String userEmail = (String) session1.getAttribute("UEmail");
String query = "SELECT * FROM user_info WHERE UEmail='" + userEmail + "'";
ResultSet resultSet = statement.executeQuery(query);

while (resultSet.next()) {
	out.println("<section class=main>"+
"<div class=profile-card>"+
	"<div class=profile-pic><img src=DP.jpg alt=Profile Picture></div>"+
	"<div class=data><h2>"+resultSet.getString("UName")+"</h2>"+
"<span>" + resultSet.getString("UBD") + "</span></div>"+
			"<div class=row><div class=info></div></div>"+
			"<div class=button><a href=EditProfile.jsp target=_blank>Edit<i class=fas fa-location-arrow></i></a>"+
			"</div></section>");
	
}


resultSet.close();
statement.close();
connection.close();
%>
</body>
</html>