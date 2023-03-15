<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
    <%
    
      String id = (String)session.getAttribute("id");
    %>
 <style>
         #a
         {
            width:800px;
            height: 400px;
            background-color: transparent;
            box-shadow:-2px 2px 5px black,2px -2px 8px black;
            margin-top: 160px;
            margin-left: 280px;
            padding-top: 100px;
         }
         #img
         {
            width: 400px;
            position: absolute;
            bottom: 300px;
            right: 360px;
            display: block;
         }
         #b
         {
            position: relative;
            right: 200px;
            bottom: 50px;
         }
         #login
         {
            width: 100px;
            height: 30px;
            background-color: rgb(155, 155, 213);
            color: white;
         }
         #login:hover
         {
           background-color: green;
           color: white;
         }
         #button
         {
            position: relative;
            left: 800px;
            bottom: 80px;
            border : none;
         }
         #button:hover
         {
            background-color:black;
            color:white;
         }
         #passmatch
         {
           height:100px;
           width:100px;
           background-color:black;
         }
         #validation-message
         {
           color:red;
            position: absolute;
            bottom: 347px;
            left: 580px;
            visibility:hidden;
         }
         #success-message
         {
          width:300px;
          height:250px;
          background-color: white;
          position:absolute;
          bottom: 300px;
          left: 530px;
          box-shadow:-2px 2px 5px black,2px -2px 8px black;
         }
         #closeMessage
         {
          position: relative;
          right: 22px;
          bottom:174px;
         }
          #closeMessage:hover
          {
           background-color: black;
           color: white;
          }
         .wrapper
         {
          position: relative;
          left: 20px;
         }
         .wrapper{height:80px;display:flex;justify-content:center;align-items:center;}.checkmark__circle{stroke-dasharray: 126;stroke-dashoffset: 126;stroke-width: 2;stroke-miterlimit: 10;stroke: #7ac142;fill: none;animation: stroke 0.6s cubic-bezier(0.65, 0, 0.45, 1) forwards}.checkmark{width: 56px;height: 56px;border-radius: 50%;display: block;stroke-width: 2;stroke: #fff;stroke-miterlimit: 10;margin: 10% auto;box-shadow: inset 0px 0px 0px #7ac142;animation: fill .4s ease-in-out .4s forwards, scale .3s ease-in-out .9s both}.checkmark__check{transform-origin: 50% 50%;stroke-dasharray: 48;stroke-dashoffset: 48;animation: stroke 0.3s cubic-bezier(0.65, 0, 0.45, 1) 0.8s forwards}@keyframes stroke{100%{stroke-dashoffset: 0}}@keyframes scale{0%, 100%{transform: none}50%{transform: scale3d(1.1, 1.1, 1)}}@keyframes fill{100%{box-shadow: inset 0px 0px 0px 30px #7ac142}}
     </style>
    <div id="a">
     <center><form id="b" action="storeuserdata.jsp">
        <label><h1>Sign Up</h1></label><br>
        <input placeholder="Your Name" required name="Ename"><br><br>
        <input placeholder="Your Email" type="email" name="mail" required><br><br>
        <input placeholder="Enter Password" type="password" id="password1" required name="password1"  oninput="verifyPasswords()"><br><br>
        <input placeholder="Re-Enter Password "type="password" id="password2" required name="password2" oninput="verifyPasswords()"><br><br>
        <input placeholder="Contact Number" type="number" name="number" required><br><br>
        <input type="checkbox" id="check" required>I agree all terms & conditions<br><br>
        <input id="login" type="submit" value="Register" >
    </form></center>
    </div>
    <img id="img" src="image/laptop.png" alt="laptop"> 
    <div>
    <button id="button" onclick="redirect()">Already a member</button>
    </div>
    <p id="validation-message">Password is mismatched</p>
           <div id="success-message">
           <center><h1>Congrats!</h1>
            <center><p style='color:green';>Account created successfully!</p>
            <p>Your ID : <%=id %></p>
            </center>
	  <div class="wrapper"> <svg class="checkmark" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52"> <circle class="checkmark__circle" cx="26" cy="26" r="25" fill="none"/> <path class="checkmark__check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8"/>
      </svg><br>
           <center><button onclick="closeMessage()" id="closeMessage">x</button></center>
           </div>
	           <script>
                 function redirect()
                 {
         	       window.location.href = "login.jsp"
                 }
                </script>
                <script>
                   function closeMessage()
                   {
                   document.getElementById('success-message').style.display = 'none';
                   }
                </script>
               <script>
               
                  function verifyPasswords() {
                	  var password1 = document.getElementById("password1").value;
                      var password2 = document.getElementById("password2").value;
                  if (password1 == password2) {
                  document.getElementById("password2").style.borderColor="white";
                  document.getElementById("validation-message").style.visibility="hidden";
                  }
                  else if(password2=="")
                	  {
                	  document.getElementById("password2").style.borderColor="white";
                      document.getElementById("validation-message").style.visibility="hidden";
                	  }
                  else {
                  document.getElementById("password2").style.borderColor="red";
                  document.getElementById("validation-message").style.visibility="visible";
                    }
      }
    </script>
</body>
</html>