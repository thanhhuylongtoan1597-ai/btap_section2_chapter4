<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/survey.css" type="text/css">
</head>
<body>
    <img src="images/murachlogo.png" alt="Murach logo">

    <h1 style="color: green;">Thanks for filling out our survey!</h1>
    <p>Here is the information that you entered:</p>

    <h2 style="color: green;">Your Information:</h2>
    <label>First Name:</label>
    <span>${user.firstName}</span><br>

    <label>Last Name:</label>
    <span>${user.lastName}</span><br>

    <label>Email:</label>
    <span>${user.email}</span><br>

    <label>Date of Birth:</label>
    <span>${user.dateOfBirth}</span><br>

    <h2 style="color: green;">Additional Details:</h2>
    <label>Heard From:</label>
    <span>${user.heardFrom}</span><br>

    <label class="pad_top">Wants Updates:</label>
    <span>${user.wantsUpdates}</span><br>

    <label>Email OK:</label>
    <span>${user.emailOK}</span><br>

    <label>Contact Via:</label>
    <span>${user.contactVia}</span><br>

    <p class="pad_top">To enter another response, click on the Return button below:</p>

    <form action="survey" method="get">
        <input type="submit" value="Return" style="
                background-color: #3498db;
                color: white;
                font-weight: bold;
                padding: 8px 18px;
                border: none;
                border-radius: 6px;
                cursor: pointer;
                margin-top: 10px;
            ">
    </form>
</body>
</html>