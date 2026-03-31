<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&family=Orbitron:wght@400..900&family=Poiret+One&display=swap"
        rel="stylesheet">
    <title>Destination</title>
    <style>
        * {
            font-family: "Dancing Script", cursive;
            font-optical-sizing: auto;
            font-style: normal;
        }

        .box {
            background-image: url(background.jpg);
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            background-color: rgb(255, 255, 255);
        }

        .box .content {
            width: 100%;
            display: grid;
            /* grid-template-columns: 300px 300px 300px 300px; */
            grid-template-columns: repeat(4, 24%);
            /* grid-template-rows: 150px 150px 150px 150px; */
            grid-template-rows: repeat(9, 150px);
            gap: 1rem;
            padding: 1rem;
        }

        .news-box {
            /* border: 1px solid black; */
            overflow: hidden;
            background-color: rgba(255, 255, 255, 0.5);
            padding: 35px;
            border-radius: 10px;
        }

        .btnd {
            display: flex;
            justify-content: space-around;
        }

        .box button {
            font-size: 40px;
            height: 80px;
            width: 40%;
            background-image: linear-gradient(to right, #348F50 0%, #56B4D3 51%, #348F50 100%);
            margin: 10px;
            padding: 15px 45px;
            text-align: center;
            text-transform: uppercase;
            transition: 0.5s;
            background-size: 200% auto;
            color: white;
            box-shadow: 0 0 20px #eee;
            border-radius: 10px;
            display: block;
        }

        .box button:hover {
            background-position: right center;
            color: #fff;
            text-decoration: none;
        }


        .news-box h1 {
            font-size: 40px;
            font-family: "Poiret One", sans-serif;
            text-shadow: 10px 10px 10px rgb(255, 255, 255);
        }

        .news1 p {
            color: white;
            text-shadow: 10px 10px 10px black;
        }

        .news1 h1 {
            font-family: "Sofia", sans-serif;
            color: rgba(0, 0, 0, 0.745);
            text-shadow: 10px 10px 4px white;
            font-size: 60px;
        }

        .news4 h1 {
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 25px;
        }

        .news-box p {
            font-family: "Dancing Script", cursive;
            font-size: 20px;
        }

        .news1 {
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            /* background-color: #cb5050; */
            grid-column-start: 1;
            grid-column-end: 5;
            grid-row-start: 1;
            grid-row-end: 3;
        }

        .news2 {
            /* background-color: #a8cb50; */
            text-align: center;
            grid-column-start: 1;
            grid-column-end: 3;
            grid-row-start: 3;
            grid-row-end: 5;
        }

        .news3 {
            /* background-color: #cb5050; */
            grid-column-start: 1;
            grid-column-end: 3;
            grid-row-start: 5;
            grid-row-end: 6;
        }

        .news4 {
            /* background-color: #cb5050; */
            grid-column-start: 3;
            grid-column-end: 5;
            grid-row-start: 3;
            grid-row-end: 6;
        }

        .news5 {
            /* background-color: #cb5050; */
            grid-column-start: 1;
            grid-column-end: 3;
            grid-row-start: 6;
            grid-row-end: 8;
        }

        .news6 {
            /* background-color: #cb5050; */
            grid-column-start: 3;
            grid-column-end: 5;
            grid-row-start: 6;
            grid-row-end: 8;
        }

        .news7 {
            /* background-color: #cb5050; */
            grid-column-start: 1;
            grid-column-end: 3;
            grid-row-start: 8;
            grid-row-end: 10;
        }

        .news8 {
            /* background-color: #cb5050; */
            grid-column-start: 3;
            grid-column-end: 5;
            grid-row-start: 8;
            grid-row-end: 10;
        }
    </style>
</head>

<body>

    <object data="header.html" type="text/html" style="width:100%; height:auto;">
        Your browser does not support the object tag.
    </object>

    <div class="box">
        <div class="content">
            <div class="news-box news1" style="background-image: url('Images_From_Database/VaishnoMain.jpg');">
                <!-- <h1>Welcome to MyDarshan</h1> -->
            </div>
            <div class="news-box news2" style="background-image: url('assets/images/box2.jpg');">
                <h1>Vaishno Devi</h1>
                <p>Trikuta Hills Jammu & Kashmir</p>
                <h1>Rs.5,709</h1>
                <p class="title">Cost</p>
            </div>
            <div class="news-box news3" style="background-image: url('assets/images/box3.jpg');">

                <form action="sendEmail">
                    <div class="btnd">
                        <button type="submit">Book</button>
                        <button>Back</button>
                    </div>
                </form>


            </div>
            <div class="news-box news4" style="background-image: url('assets/images/box4.jpg');">
                <h1>About Mata Vaishno Devi Mandir in Katra, Jammu The second-most visited Hindu pilgrimage destination
                    in India, Mata Vaishno Devi Cave Temple is situated in the Trikuta Hills in Katra, Jammu & Kashmir.
                </h1>
                <!-- <p class="title">July 17 , 2017</p> -->
                <!-- <p>Demo Admin</p> -->
            </div>
            <div class="news-box news5" style="background-image: url('assets/images/box4.jpg');">
                <div class="ftco-footer-widget pt-md-1 mb-1 ml-md-1">
                    <h2 class="ftco-heading-2">Day 01</h2>
                    <ul class="list-unstyled">
                        <li>&#x2022; Arrival in Shivpuri Camp</li>
                        <hr>
                        <li>&#x2022; Reach Camp Shivpuri at 11:00 AM in the morning..</li>
                        <hr>
                        <li>&#x2022; Welcome drinks will be served at 11:30 AM..</li>
                        <hr>
                        <li>&#x2022; Lunch (Dal, dry veg, roti, rice, salad, raita, achar, papad) will be served at 2:30
                            PM..</li>
                        <hr>
                    </ul>
                </div>
            </div>
            <div class="news-box news6" style="background-image: url('assets/images/box4.jpg');">
                <div class="ftco-footer-widget pt-md-1 mb-1 ml-md-1">
                    <h2 class="ftco-heading-2">Day 01</h2>
                    <ul class="list-unstyled">
                        <li>&#x2022; Arrival in Shivpuri Camp</li>
                        <hr>
                        <li>&#x2022; Reach Camp Shivpuri at 11:00 AM in the morning..</li>
                        <hr>
                        <li>&#x2022; Welcome drinks will be served at 11:30 AM..</li>
                        <hr>
                        <li>&#x2022; Lunch (Dal, dry veg, roti, rice, salad, raita, achar, papad) will be served at 2:30
                            PM..</li>
                        <hr>
                    </ul>
                </div>
            </div>
            <div class="news-box news7" style="background-image: url('assets/images/box4.jpg');">
                <div class="ftco-footer-widget pt-md-1 mb-1 ml-md-1">
                    <h2 class="ftco-heading-2">Day 01</h2>
                    <ul class="list-unstyled">
                        <li>&#x2022; Arrival in Shivpuri Camp</li>
                        <hr>
                        <li>&#x2022; Reach Camp Shivpuri at 11:00 AM in the morning..</li>
                        <hr>
                        <li>&#x2022; Welcome drinks will be served at 11:30 AM..</li>
                        <hr>
                        <li>&#x2022; Lunch (Dal, dry veg, roti, rice, salad, raita, achar, papad) will be served at 2:30
                            PM..</li>
                        <hr>
                    </ul>
                </div>
            </div>
            <div class="news-box news8" style="background-image: url('assets/images/box4.jpg');">
                <div class="ftco-footer-widget pt-md-1 mb-1 ml-md-1">
                    <h2 class="ftco-heading-2">Day 01</h2>
                    <ul class="list-unstyled">
                        <li>&#x2022; Arrival in Shivpuri Camp</li>
                        <hr>
                        <li>&#x2022; Reach Camp Shivpuri at 11:00 AM in the morning..</li>
                        <hr>
                        <li>&#x2022; Welcome drinks will be served at 11:30 AM..</li>
                        <hr>
                        <li>&#x2022; Lunch (Dal, dry veg, roti, rice, salad, raita, achar, papad) will be served at 2:30
                            PM..</li>
                        <hr>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</body>

</html>