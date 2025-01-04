<%@ page language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Portal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #f7b42c, #fc575e, #85d8ce, #a6c1ee);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: white;
        }

        .container {
            text-align: center;
            background: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
            width: 400px;
        }

        .container h2 {
            margin-bottom: 30px;
            font-size: 36px;
            color: #333;
        }

        .buttons {
            display: flex;
            justify-content: space-between;
            gap: 20px;
        }

        .button {
            padding: 12px 20px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: transform 0.2s, background-color 0.3s;
        }

        .view-job {
            background-color: #6a8caf;
            color: white;
        }

        .view-job:hover {
            background-color: #58729a;
            transform: scale(1.05);
        }

        .add-job {
            background-color: #f76c6c;
            color: white;
        }

        .add-job:hover {
            background-color: #e35b5b;
            transform: scale(1.05);
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Welcome to Job Portal</h2>
    <div class="buttons">
        <button class="button view-job" onclick="location.href='/view-jobs';">View Jobs</button>
        <button class="button add-job" onclick="location.href='/add-job';">Add Job</button>
    </div>
</div>

</body>
</html>


