<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Forgot Password</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap');

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: #000;
        }

        section {
            position: absolute;
            width: 100vw;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 2px;
            flex-wrap: wrap;
            overflow: hidden;
        }

        .signin-form {
            /* Style cho phần tử <form> */
            position: absolute;
            width: 400px;
            background: #222;
            z-index: 1000;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px;
            border-radius: 4px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 9);
        }

        .signin-form .content {
            /* Style cho phần tử .content */
            position: relative;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            gap: 40px;
        }

        .signin-form .content h2 {
            font-size: 2em;
            color: #ffc107;
            text-transform: uppercase;
        }

        .signin-form .content .form {
            /* Style cho phần tử .form */
            width: 100%;
            display: flex;
            flex-direction: column;
            gap: 25px;
        }

        .signin-form .content .form .inputBox {
            /* Style cho phần tử .inputBox */
            position: relative;
            width: 100%;
        }

        .signin-form .content .form .inputBox input {
            /* Style cho phần tử <input> */
            position: relative;
            width: 100%;
            background: #333;
            border: none;
            outline: none;
            padding: 25px 10px 7.5px;
            border-radius: 4px;
            color: #fff;
            font-weight: 500;
            font-size: 1em;
        }

        .signin-form .content .form .inputBox i {
            /* Style cho phần tử <i> */
            position: absolute;
            left: 0;
            padding: 15px 10px;
            font-style: normal;
            color: #aaa;
            transition: 0.5s;
            pointer-events: none;
        }

        .signin-form .content .form .inputBox input:focus ~ i,
        .signin-form .content .form .inputBox input:valid ~ i {
            transform: translateY(-7.5px);
            font-size: 0.8em;
            color: #fff;
        }

        .signin-form .content .form .links {
            /* Style cho phần tử .links */
            position: relative;
            width: 100%;
            display: flex;
            justify-content: space-between;
        }

        .signin-form .content .form .links a {
            /* Style cho các phần tử <a> trong .links */
            color: #fff;
            text-decoration: none;
        }

        .signin-form .content .form .links a:nth-child(1) {
            color: #ffc107;
            font-weight: 600;
        }

        .signin-form .content .form .inputBox input[type="submit"] {
            /* Style cho phần tử <input type="submit"> */
            padding: 10px;
            background: #ffc107;
            color: #000;
            font-weight: 600;
            font-size: 1.35em;
            letter-spacing: 0.05em;
            transition: transform 0.3s;
            cursor: pointer;
        }

        .signin-form .content .form .inputBox input[type="submit"]:hover {
            transform: scale(1.02);
            background-color: #f6c42d;
        }

        input[type="submit"]:active {
            opacity: 0.6;
        }

        @media (max-width: 900px) {
            section span {
                width: calc(10vw - 2px);
                height: calc(10vw - 2px);
            }
        }

        @media (max-width: 600px) {
            section span {
                width: calc(20vw - 2px);
                height: calc(20vw - 2px);
            }
        }
    </style>
</head>

<body>
    <section>
        <form action="/asmJava4/account/otp" method="post" class="signin-form">
            <div class="signin">

                <div class="content">

                    <h2>Change pass OTP</h2>

                    <div class="form">

                        <div class="inputBox">

                            <input type="text" required name="newpass"> <i>New pass</i>

                        </div>

                        <div class="inputBox">

                            <input type="text"  required name="otp"> <i>Mã xác nhận</i>

                        </div>

                        <div class="links">
                            <a href="/asmJava4/account/login">Login</a>

                        </div>

                        <div class="inputBox">

                            <input type="submit" value="Change pass">

                        </div>
					    <mark class="text-center">${ms}</mark>
                    </div>

                </div>

            </div>
        </form>
    </section>
</body>

</html>
