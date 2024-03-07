<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
       .card{
        border: 3px solid black ; /* Add border property */
        border-radius:8px;
        min-height: 300px;
        width: 400px;
        margin-left: 100px;
        background-color: #E0C3BD;
       	
       }
       .label-div {
		    
		   
		    padding: 3px; /* Add padding to separate the content from the border */
			font-size:20px;
			height: 45px;
			margin-left: 0px;
			margin-right:0px ;
			
			
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
            color: #2F34CA;
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
       <h3>Bid submitted Successfully</h3>
      
        <br>
        <p>Your bid is now Active. If your bid is successful, you will be notified within 24 hours</p>
        <br>
        
        <div class="card">
        <h3>${requestScope.ItemName}</h3>
  	         <br>
	        <label  class="label-div"  for="ItemId">Item ID: ${requestScope.ItemId}</label>        
	        <label class="label-div" for="YourName"> Name: ${requestScope.YourName}</label>
	      
	        <label class="label-div" for="Email">Email Id: ${requestScope.Email}</label>
	 
	        
	        <label class="label-div" for="Amount">Amount: ${requestScope.Amount}</label>
 	</div>
 
    </div>
</body>
</html>
