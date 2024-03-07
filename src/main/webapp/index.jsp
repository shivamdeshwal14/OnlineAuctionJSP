<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to AP Auctions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h3 {
            font-size: 24px;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-size: 16px;
            color: #666;
            margin-bottom: 8px;
        }
        input[type="text"],
        input[type="number"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            box-sizing: border-box;
        }
        input[type="text"]:focus,
        input[type="number"]:focus {
            outline: none;
            border-color: #007bff;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 18px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h3>Welcome to AP Auction . Please Enter Bid</h3>
    <form action="Bidpage" method="post">
        <label for="ItemId">Item ID</label>
        <input type="text" id="ItemId" name="ItemId" placeholder="Item ID">
        
        <label for="ItemName">Item Name</label>
        <input type="text" id="ItemName" name="ItemName" placeholder="Item Name">
        
        <label for="YourName">Your Name</label>
        <input type="text" id="YourName" name="YourName" placeholder="Enter Name">
        
        <label for="Email">Email Id</label>
        <input type="text" id="Email" name="Email" placeholder="Enter Email">
        
        <label for="Amount">Enter Bid Amount</label>
        <input type="number" id="Amount" name="Amount" placeholder="Enter Amount">
        
        <input type="submit" value="Submit">
    </form>
</div>

</body>
</html>
