<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8" />
    <title>Destinations Edit Form</title>
    <link rel="stylesheet" href="style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style type="text/css">
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
            background: linear-gradient(135deg, #ffc1c1, #400100);
        }

        .container {
            max-width: 700px;
            width: 100%;
            background-color: #fff;
            padding: 15px 30px;
            border-radius: 5px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
        }

        .container .title {
            font-size: 25px;
            font-weight: 500;
            position: relative;
        }

        .container .title::before {
            content: "";
            position: absolute;
            left: 0;
            bottom: 0;
            height: 3px;
            width: 30px;
            border-radius: 5px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }

        .content form .user-details {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin: 20px 0 12px 0;
        }

        form .user-details .input-box {
            margin-bottom: 15px;
            width: calc(100% / 2 - 20px);
        }

        form .input-box span.details {
            display: block;
            font-weight: 500;
            margin-bottom: 5px;
        }

        .user-details .input-box input {
            height: 45px;
            width: 100%;
            outline: none;
            font-size: 16px;
            border-radius: 5px;
            padding-left: 15px;
            border: 1px solid #ccc;
            border-bottom-width: 2px;
            transition: all 0.3s ease;
        }

        form .input-box-2 span.details {
            font-weight: 500;
        }

        .user-details .input-box-2 textarea {
            height: 45px;
            width: 100%;
            outline: none;
            font-size: 16px;
            border-radius: 10px;
            padding-left: 15px;
            padding-top: 15px;
            border: 1px solid #ccc;
            border-bottom-width: 2px;
            transition: all 0.3s ease;
        }

        /* .user-details .input-box-3 input {
            height: 45px;
            width: 100%;
            outline: none;
            font-size: 16px;
            border-radius: 5px;
            padding-left: 15px;
            padding-top: 10px;
            border: 1px solid #ccc;
            border-bottom-width: 2px;
            transition: all 0.3s ease;
        } */

        .user-details .input-box input:focus,
        .user-details .input-box input:valid {
            border-color: #9b59b6;
        }

        form .gender-details .gender-title {
            font-size: 20px;
            font-weight: 500;
        }

        form .category {
            display: flex;
            width: 80%;
            margin: 14px 0;
            justify-content: space-between;
        }

        form .category label {
            display: flex;
            align-items: center;
            cursor: pointer;
        }

        form .category label .dot {
            height: 18px;
            width: 18px;
            border-radius: 50%;
            margin-right: 10px;
            background: #d9d9d9;
            border: 5px solid transparent;
            transition: all 0.3s ease;
        }

        #dot-1:checked~.category label .one,
        #dot-2:checked~.category label .two,
        #dot-3:checked~.category label .three {
            background: #9b59b6;
            border-color: #d9d9d9;
        }

        form input[type="radio"] {
            display: none;
        }

        form .button {
            height: 45px;
            margin: 35px 0;
        }

        form .button input {
            height: 100%;
            width: 100%;
            border-radius: 5px;
            border: none;
            color: #fff;
            font-size: 18px;
            font-weight: 500;
            letter-spacing: 1px;
            cursor: pointer;
            transition: all 0.3s ease;
            background: linear-gradient(135deg, #400100, #ffe5e5);
        }

        form .button input:hover {
            /* transform: scale(0.99); */
            background: linear-gradient(-135deg, #400100, #ffe5e5);
        }

        @media (max-width: 584px) {
            .container {
                max-width: 100%;
            }

            form .user-details .input-box {
                margin-bottom: 15px;
                width: 100%;
            }

            form .category {
                width: 100%;
            }

            .content form .user-details {
                max-height: 300px;
                overflow-y: scroll;
            }

            .user-details::-webkit-scrollbar {
                width: 5px;
            }
        }

        @media (max-width: 459px) {
            .container .content .category {
                flex-direction: column;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="title">Destination Edit Form</div>
        <div class="content">
            <form action="DestinationUpdate" method="post" enctype="multipart/form-data">
                <div class="user-details">
                    <div class="input-box">
                        <span class="details">Destination Id</span>
                        <input type="text" name="destination_id" value="${dd.destination_id}" readonly />
                    </div>
                    <div class="input-box">
                        <span class="details">Name</span>
                        <input type="text" name="destination_name" value="${dd.destination_name}" required />
                    </div>
                    <div class="input-box">
                        <span class="details">Title</span>
                        <input type="text" name="destination_title" value="${dd.destination_title}" required />
                    </div>
                    <div class="input-box">
                        <span class="details">Location</span>
                        <input type="text" name="destination_location" value="${dd.destination_location}" required />
                    </div>
                    <div class="input-box">
                        <span class="details">Description</span>
                        <input type="text" name="destination_description" value="${dd.destination_description}"
                            required />
                    </div>
                    <div class="input-box">
                        <span class="details">Cost</span>
                        <input type="text" name="destination_cost" value="${dd.destination_cost}" />
                    </div>
                    <div class="input-box-2">
                        <span class="details">Information</span>
                        <textarea name="destination_information" rows="10"
                            cols="70">${dd.destination_description}</textarea>
                    </div>
                    <div class="input-box">
                        <span class="details">Duration</span>
                        <input type="number" name="destination_duration" value="${dd.destination_duration}" />
                    </div>
                    <div class="input-box">
                        <span class="details">Profile Image</span>
                        <input type="file" name="" placeholder="Square Size Picture" />
                    </div>
                </div>

                <div class="button">
                    <input type="submit" value="Edit Destination" />
                </div>
            </form>
        </div>
    </div>
</body>

</html>