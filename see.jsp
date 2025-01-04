<%@ page language="java" %>

<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Jobs</title>
    <style>
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<h2 style="text-align: center;">Job List</h2>
<table>
    <thead>
    <tr>
        <th>Job Name</th>
        <th>Description</th>
        <th>Types</th>
    </tr>
    </thead>
    <tbody>

    <tr>
        <td>Test Job</td>
        <td>Test Description</td>
        <td>Test Type 1<br>Test Type 2</td>
    </tr>

    <%

        List<com.prayash.springbootweb1.Kam> kamList =
                (List<com.prayash.springbootweb1.Kam>) request.getAttribute("kamList");


        if (kamList != null) {
            for (com.prayash.springbootweb1.Kam kam : kamList) {
    %>
    <tr>
        <td><%= kam.getJobName() %></td>
        <td><%= kam.getJobDescription() %></td>
        <td>
            <%
                // Iterate through the job types
                List<String> jobTypes = kam.getJobType();
                if (jobTypes != null) {
                    for (String type : jobTypes) {
            %>
            <%= type %><br>
            <%
                    }
                }
            %>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="3" style="text-align: center;">No jobs available.</td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
</body>
</html>

