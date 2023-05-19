<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="shareOpinion.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
   <body>
      <input type="checkbox" id="click">
      <label for="click">
      <i class="fab fa-facebook-messenger"></i>
      <i class="fas fa-times"></i>
      </label>
      <div class="wrapper">
         <div class="head-text">
           <p style:"center">Let's Huddle Up</p>
         </div>
         <div class="chat-box">
            <div class="desc-text">

            </div>
            <form action="booksServlet" method="post">
             
               <div class="field textarea">
                  <textarea cols="30" rows="10" placeholder="Write a message" name="opinion" required></textarea>
		
		
               </div>
               <div class="field">
                  <button type="submit">Post</button>
               </div>
            </form>
         </div>
      </div>
   </body>
	<title>Books</title>
	
	<style>
		.container {
			display: flex;
			flex-wrap: wrap;
		}
	.column {
		width: 50%;
		box-sizing: border-box;
		padding: 20px;
	}
	
	.left-column {
		width: 70%;
		background-color: #f2f2f2;
	}
	
	.right-column {
		width : 30%;
		background-color: #ddd;
	}
	
	table {
		border-collapse: collapse;
		width: 100%;
		margin-top: 20px;
	}
	
	th, td {
		text-align: left;
		padding: 8px;
		border-bottom: 1px solid #ddd;
	}
	
	th {
		background-color: #4070f4;
		color: white;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="column left-column">
			<h1>Users opinions</h1>
			<table>
			  <tr>
			    <th>Name</th>
			    <th>Opinion</th>
			    <th>Posted at</th>
			  </tr>
			  <%
			  Class.forName("com.mysql.cj.jdbc.Driver");
			  	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/budies?useSSL=false","root","JanVi@31");
				PreparedStatement stmt1 = con.prepareStatement("select user_info.UName , opinions.opinion , opinions.create_at from user_info inner join opinions on user_info.UEmail=opinions.UEmail where interest='Books'");
				ResultSet rs1 = stmt1.executeQuery();
				while (rs1.next()) {
			  %>
			  <tr>
			    <td><%= rs1.getString("UName") %></td>
			    <td><%= rs1.getString("opinion") %></td>
			    <td><%= rs1.getString("create_at") %></td>
			  </tr>
			  <%
			  	}
				// Clean up resources
				rs1.close();
				stmt1.close();
			  %>
			</table>
		</div>
		<div class="column right-column">
			<h1>Users Interested in Books</h1>
			<table>
			  <tr>
			    <th>Name</th>
			    <th>Instagram ID</th>
			  </tr>
			  <%
				PreparedStatement stmt = con.prepareStatement("SELECT user_info.UName, interest.instaID FROM user_info JOIN interest ON user_info.UEmail = interest.UEmail WHERE interest.interest1 = 'Books' OR  interest.interest2 = 'Books' OR interest.interest3 = 'Books'");
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
			  %>
			  <tr>
			    <td><%= rs.getString("UName") %></td>
			    <td><%= rs.getString("instaID") %></td>
			  </tr>
			  <%
			  	}
				// Clean up resources
				rs.close();
				stmt.close();
				con.close();
			  %>
			</table>
		</div>
	</div>
</body>
</html>