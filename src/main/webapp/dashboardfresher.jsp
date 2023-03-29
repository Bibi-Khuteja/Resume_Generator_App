<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
        crossorigin="anonymous"></script>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js">
        </script>
        <script src=
    "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js">
        </script>

    <title>Dashboard</title>
    <style>
        .content-header {
            font-family: 'Oleo Script', cursive;
            color: #000000;
            font-size: 45px;
        }

        .section-content {
            text-align: center;

        }

        #contact {

            font-family: 'Teko', sans-serif;
            padding-top: 60px;
            width: 100%;
            width: 100%;
            height: auto;
            background: #3a6186;
            /* fallback for old browsers */
            background: -webkit-linear-gradient(to left, #3a6186, #18b7bc);
            /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to left, #3a6186, #219c9e);
            /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            color: #121111;
        }

        .contact-section {
            padding-top: 40px;
        }


        /* .button-container {
            padding: 40px;
        } */

        /* .tempelete {
        display: flex;
        align-items: center;
      } */
    </style>
</head>

<body style="background-image: url(dashboard1.jpeg);  background-repeat: no-repeat;  background-size: 1280px 600px;">

    <!-- <div class="button-container"> -->
        <section id="contact">
            <div class="section-content">
                <h1 class="section-header"><span class="content-header wow fadeIn " data-wow-delay="0.2s"
                        data-wow-duration="2s">SELECT YOUR TEMPELETE</span>
                </h1>

            </div>
            <%
            String id=request.getParameter("id");
            System.out.println(id);
            %>
        </section><br>
        <!-- <button class="btn btn-md btn-lg btn-dark btn-success col text-center ">
            <img src="frshTem1.png" width="25" />
            <span style="margin-left: 10px;"> 1</span>
        </button> -->
        <div class="text-center">
        
            <button type="submit" class="btn btn-dark btn-lg ">
            <a href="temp1Frsh.jsp?id=<%=id%>"><img src="frshTem1.png" width="50"  ></a>
                
                
                TEMPELETE 1</button><a href="tem1frsh.html"></a>
         
            <button type="submit" class="btn btn-dark btn-lg ">
             <a href="temp2Frsh.jsps">
                <img src="frshTem2.png" width="50" />
                </a>
                TEMPELETE 2</button>
          </div>


        
    </div>
</body>

</html>