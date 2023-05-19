<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Opinion Page</title>
      
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
            <form action="#">
             
               <div class="field textarea">
                  <textarea cols="30" rows="10" placeholder="Write a message" name="uinterest" required></textarea>
		
		
               </div>
               <div class="field">
                  <button type="submit">Post</button>
               </div>
            </form>
         </div>
      </div>
   </body>
</html>