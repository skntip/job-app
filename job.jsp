<%@ page language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #f7b42c, #fc575e, #85d8ce, #a6c1ee);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
        }

        .form-container h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .form-container label {
            display: block;
            margin-bottom: 8px;
            text-align: left;
        }

        .form-container input,
        .form-container select,
        .form-container textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-container button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .form-container button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Job Form</h2>
    <form action="/add-job" method="POST">
        <!-- Job Name -->
        <label for="jobName">Job Name:</label>
        <input type="text" id="jobName" name="jobName" placeholder="Enter job name" required>

        <!-- Job Description -->
        <label for="jobDescription">Job Description:</label>
        <textarea id="jobDescription" name="jobDescription" placeholder="Enter job description" rows="4" required></textarea>

        <!-- Job Type -->
        <label for="jobType">Job Type:</label>
        <select id="jobType" name="jobType" multiple size="4" required>
            <option value="frontend">Front-End</option>
            <option value="backend">Back-End</option>
            <option value="hr">HR</option>
            <option value="manager">Manager</option>
        </select>

        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>


