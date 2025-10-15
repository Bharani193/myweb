<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Interactive Greeting</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(to right, #f0f8ff, #e6f7ff);
      text-align: center;
      padding: 50px;
    }
    input, button {
      padding: 10px;
      font-size: 16px;
      margin-top: 10px;
    }
    button {
      background-color: #0078d7;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    button:hover {
      background-color: #005fa3;
    }
    #message {
      margin-top: 20px;
      font-size: 20px;
      color: #333;
    }
  </style>
</head>
<body>

  <h1>👋 Interactive Greeting</h1>
  <p>Enter your name and click the button below!</p>
  
  <input type="text" id="nameInput" placeholder="Enter your name" />
  <button onclick="sayHello()">Say Hello</button>

  <div id="message"></div>

  <script>
    function sayHello() {
      const name = document.getElementById("nameInput").value.trim();
      const messageDiv = document.getElementById("message");
      
      if (name) {
        const time = new Date().toLocaleTimeString();
        messageDiv.innerHTML = `👋 Hello, <strong>${name}</strong>!<br>Welcome — current time is ${time}.`;
      } else {
        messageDiv.innerHTML = "⚠️ Please enter your name first.";
      }
    }
  </script>

</body>
</html>
