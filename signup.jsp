<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
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
	           <script>
                 function redirect()
                 {
         	       window.location.href = "login.jsp"
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