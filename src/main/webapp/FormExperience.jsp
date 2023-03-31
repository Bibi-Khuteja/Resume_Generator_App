<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

  <!------ Include the above in your HEAD tag ---------->

  <link href="https://fonts.googleapis.com/css?family=Oleo+Script:400,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Teko:400,700" rel="stylesheet">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

  <title>Document</title>
  <style>
    /*Contact sectiom*/
    .content-header {
      font-family: 'Oleo Script', cursive;
      color: #fcc500;
      font-size: 45px;
    }

    .section-content {
      text-align: center;

    }

    #contact {

      font-family: 'Teko', sans-serif;
      padding-top: 60px;
      width: 100%;
      width: 100vw;
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

    .contact-section .col-md-6 {
      width: 50%;
    }


    .form-line {
      border-right: 1px solid #B29999;
    }

    .form-group {
      margin-top: 10px;
    }

    #edu2 {
      display: none;
    }


    #edu3 {
      display: none;
    }

    #edu4 {
      display: none;
    }



    #pro2 {
      display: none;
    }
    #pro3 {
      display: none;
    }
    

    #intern2 {
      display: none;
    }
     #intern3 {
      display: none;
    }
    


    #skill2 {
      display: none;
    }

    #skill3 {
      display: none;
    }

    #skill4 {
      display: none;
    }

    #skill5 {
      display: none;
    }

    #skill6 {
      display: none;
    }

    #skill7 {
      display: none;
    }

    #skill8 {
      display: none;
    }

    #acti2 {
      display: none;
    }
    #certi2 {
      display: none;
    }

    #interest2 {
      display: none;
    }
    #interest3 {
      display: none;
    }
    #interest4 {
      display: none;
    }
    #interest5 {
      display: none;
    }


    label {
      font-size: 1.5em;
      line-height: 1em;
      font-weight: normal;
    }

    .form-control {
      font-size: 1.3em;
      color: #080808;
    }

    textarea.form-control {
      height: 80px;
      margin-top: px;
    }

     .submit {
      font-size: 1.8em;
     
      width: 500px;
      background-color: transparent;
      color: #151414;

    } 
  </style>
</head>

<body>

  <section id="contact">
    <div class="section-content">
      <h1 class="section-header"><span class="content-header wow fadeIn " data-wow-delay="0.2s"
          data-wow-duration="2s">KHUTEJA RESUME GENERATOR</span></h1>
      <h3>Enter Your Details To Get Your Resume:</h3>
    </div>
    <div class="contact-section">
      <div class="container">
        <form action="InsertDataExp" method="post">
          <div class="col-md-6 form-line">
            <div class="form-group">
              <label for="name">NAME</label>
              <input type="text" id="name" name="name" class="form-control" placeholder="Enter Name" required></input>
            </div>
            <div class="form-group">
              <label for="email">Email</label>
              <input type="text" id="email" name="email" class="form-control" placeholder="Enter Email" required></textarea>
            </div>
            <div class="form-group">
              <label for="Phone">PHONE</label>
              <input class="form-control" id="phone" name="phone"  placeholder="Enter Phone" required></input>
            </div>
            <div class="form-group">
              <label for="object">OBJECTIVES</label>
              <textarea class="form-control" id="object"  name="objective" placeholder="Enter Objectives" required></textarea>
            </div>
            <hr>
            <div class="form-group">

              <div class="form-group">
                <label for="education">Batchelor Degree:</label>
                <ul>
                  <div class="education-details" id="edu1">
                    <div>
                      <label for="course"> Course Name</label>
                      <input type="text" name="edu1course" class="form-control" id="edu1course">
                    </div><br>
                    <div>
                      <label for="collage"> College Name</label>
                      <input type="text" name="edu1college" class="form-control" id="edu1collage">
                    </div><br>
                    <div>
                      <label for="yop">YOP</label>
                      <input type="month" name="edu1yop"  class="form-control" id="edu1yop">
                    </div><br>
                    <div>
                      <label for="place">Place</label>
                      <input type="text" class="form-control" name="edu1place" id="edu1place">
                    </div><br>
                    <div>
                      <label for="percentage">Percentage</label>
                      <input type="text" class="form-control" name="edu1percentage"  id="edu1percentage">
                    </div><br>
                  </div>
                </ul>
              </div>
              <div class="form-group">
                <label for="education">Master Degree:</label>
                <p onclick="educationTwo()"  style="color: white;" class="btn btn-lg text-light">add</p>
                <ul>
                  <div class="education-details" id="edu2">
                    <div>
                      <label for="course"> Course Name</label>
                      <input type="text" class="form-control" name="edu2course" id="edu2course">
                    </div><br>
                    <div>
                      <label for="collage"> College Name</label>
                      <input type="text" class="form-control" name="edu2college" id="edu2collage">
                    </div><br>
                    <div>
                      <label for="yop">YOP</label>
                      <input type="month" class="form-control" name="edu2yop" id="edu2yop">
                    </div><br>
                    <div>
                      <label for="place">Place</label>
                      <input type="text" class="form-control" name="edu2place"  id="edu2place">
                    </div><br>
                    <div>
                      <label for="percentage">Percentage</label>
                      <input type="text" class="form-control" name="edu2percentage"  id="edu2percentage">
                    </div><br>
                  </div>
                </ul>
              </div>
              
       
              <hr>

              <div class="form-group">
                <label for="skills">SKILLS:</label><br>
                <em>can add upto 8 skills</em>
                <ul>
                  <div class="skill-details">
                    <div>
                      <div class="skill1">
                        <input type="text" id="skill1" name="skill1" value="" />
                        <p onclick="skillTwo()"  style="color: white;"class="btn btn-lg btn-light">add more</p>
                      </div>

                      <div class="skill2" id="skill2">
                        <input type="text" id="python" name="skill2" value="" />
                        <p onclick="skillThree()"  style="color: white;" class="btn btn-lg btn-light">add more</p>
                      </div>


                      <div class="skill3" id="skill3">
                        <input type="text" id="python" name="skill3" value="" />
                        <p onclick="skillFour()"  style="color: white;" class="btn btn-lg btn-light">add more</p>
                      </div>

                      <div class="skill4" id="skill4">
                        <input type="text" id="python" name="skill4" value="" />
                        <p onclick="skillFive()" style="color: white;" class="btn btn-lg btn-light">add more</p>
                      </div>

                      <div class="skill5" id="skill5">
                        <input type="text" id="python" name="skill5" value="" />
                        <p onclick="skillSix()"  style="color: white;" class="btn btn-lg btn-light">add more</p>
                      </div>

                      <div class="skill6" id="skill6">
                        <input type="text" id="python" name="skill6" value="" />
                        <p onclick="skillSeven()" style="color: white;" class="btn btn-lg btn-light">add more</p>
                      </div>
                      <div class="skill7" id="skill7">
                        <input type="text" id="python" name="skill7" value="" />
                        <p onclick="skillEight()" style="color: white;" class="btn btn-lg btn-light">add more</p>
                      </div>
                      <div class="skill8" id="skill8">
                        <input type="text" id="python" name="skill8" value="" />
                      </div>

                    </div>


                  </div>
                </ul>

              </div>
              <hr>

            </div>
          </div>
          <div class="col-md-6 form-line">

            <div class="form-group">
              <label for="projects">PROJECTS:</label>
              <div>

                <ul>
                  <div class="project_detail" id="pro1">
                    <div>
                      <label for="course"> Project Title</label>
                      <input type="text" name="pro1title" class="form-control" id="title">
                    </div><br>
                    <div>
                      <label for="technology"> Technology used</label>
                      <input type="text"  name="pro1technology" class="form-control" id="technology">
                    </div><br>
                    <div>
                      <label for="desc">Description</label>
                      <textarea class="form-control"  name="pro1desc" id="desc"></textarea>
                    </div><br>
                  </div>
                </ul>
              </div>
              <div class="form-group">
                <p onclick="projectTwo()"  style="color: white;" class="btn btn-lg">add more</p>
                <ul>
                  <div class="project_detail" id="pro2">
                    <div>
                      <label for="course"> Project Title</label>
                      <input type="text"  name="pro2title" class="form-control" id="title">
                    </div><br>
                    <div>
                      <label for="technology"> Technology used</label>
                      <input type="text" name="pro2technology"  class="form-control" id="technology">
                    </div><br>
                    <div>
                      <label for="desc">Description</label>
                      <textarea  name="pro2desc"  class="form-control" id="desc"></textarea>
                    </div><br>
                  </div>
                </ul>
              </div>
              <div class="form-group">
                <p onclick="projectThree()"  style="color: white;" class="btn btn-lg">add more</p>
                <ul>
                  <div class="project_detail" id="pro3">
                    <div>
                      <label for="course"> Project Title</label>
                      <input type="text"  name="pro3title" class="form-control" id="title">
                    </div><br>
                    <div>
                      <label for="technology"> Technology used</label>
                      <input type="text" name="pro23echnology"  class="form-control" id="technology">
                    </div><br>
                    <div>
                      <label for="desc">Description</label>
                      <textarea  name="pro3desc"  class="form-control" id="desc"></textarea>
                    </div><br>
                  </div>
                </ul>
              </div>
            </div>
            <hr>
            <div class="form-group">
              <label for="intern">EXPERIENCE:</label>
              <div class="form-group">

                <ul>
                  <div class="intern_detail" id="intern1">
                    <div>
                      <label for="course">Title</label>
                      <input type="text" name="intern1title"  class="form-control" id="title">
                    </div><br>
                    <div>
                      <label for="technology">Company Name</label>
                      <input type="text"  name="intern1company"  class="form-control" id="company">
                    </div><br>
                    <div>
                      <label for="from">FROM DATE</label>
                      <input type="month"  name="exp1From"  class="form-control" id="exp1From">
                    </div><br>
                    <div>
                      <label for="from">TO DATE</label>
                      <input type="month"  name="exp1To"  class="form-control" id="exp1To">
                    </div><br>
                    <div>
                      <label for="desc">Outcome</label>
                      <textarea  name="intern1outcome" class="form-control" id="outcome"></textarea>
                    </div><br>
                  </div>
              </div>
              <div class="form-group">
                <p onclick="internTwo()" style="color: white;" class="btn btn-lg">add more</p>
                <ul>
                  <div class="intern_detail" id="intern2">
                    <div>
                      <label for="course"> Title</label>
                      <input type="text"  name="intern2title" class="form-control" id="title">
                    </div><br>
                    <div>
                      <label for="technology"> Company Name</label>
                      <input type="text"  name="intern2company" class="form-control" id="company">
                    </div><br>
                    <div>
                      <label for="from">FROM DATE</label>
                      <input type="month"  name="exp2From"  class="form-control" id="exp2From">
                    </div><br>
                    <div>
                      <label for="from">TO DATE</label>
                      <input type="month"  name="exp2To"  class="form-control" id="exp2To">
                    </div><br>
                    <div>
                      <label for="desc">Outcome</label>
                      <textarea class="form-control"  name="intern2outcome" id="outcome"></textarea>
                    </div><br>
                  </div>
                </ul>
              </div>
              <div class="form-group">
                <p onclick="internThree()" style="color: white;" class="btn btn-lg">add more</p>
                <ul>
                  <div class="intern_detail" id="intern3">
                    <div>
                      <label for="course"> Title</label>
                      <input type="text"  name="intern3title" class="form-control" id="title">
                    </div><br>
                    <div>
                      <label for="technology"> Company Name</label>
                      <input type="text"  name="intern3company" class="form-control" id="company">
                    </div><br>
                    <div>
                      <label for="from">FROM DATE</label>
                      <input type="month"  name="exp3From"  class="form-control" id="exp2From">
                    </div><br>
                    <div>
                      <label for="from">TO DATE</label>
                      <input type="month"  name="exp3To"  class="form-control" id="exp2To">
                    </div><br>
                    <div>
                      <label for="desc">Outcome</label>
                      <textarea class="form-control"  name="intern3outcome" id="outcome"></textarea>
                    </div><br>
                  </div>
                </ul>
              </div>
            </div>
            <hr>
            <div class="form-group">
              <label for="activities"> ACTIVITIES:</label>
              <ul>
                <div class="form-group">
                  <textarea class="activities form-control"  name="acti1"  id="acti1"></textarea>
                </div>
                <div class="form-group">
                  <p onclick="activityTwo()" style="color: white;" class="btn btn-lg">add more</p>
                  <textarea class="activities form-control"  name="acti2"  id="acti2"></textarea>
                </div>
              </ul>
            </div>
            <hr>
            <div class="form-group">
              <label for="certificate"> CERTIFICATE:</label>
              <ul>
                <div>
                <div class="form-group">
                  <textarea class="certificate form-control"  name="certi1"  row="2" id="certi1"></textarea>
                </div>
                <div class="form-group">
                  <p onclick="certificateTwo()" style="color: white;" class="btn btn-lg">add more</p>
                  <textarea class="certificate form-control" row="2"  name="certi2"  id="certi2"></textarea>
                </div>
                </div>
              </ul>
            </div>
            <hr>
           
            <div class="form-group">
              <label for="interests">INTERESTS:</label><br>
              <em>can add upto 5 interests</em>
              <ul>
                <div class="interests-details">
                  <div>
                    <div class="interest">
                      <input type="text" id="interest1" name="interest1" value="" />
                      <p onclick="interestTwo()" style="color: white;" class="btn btn-lg btn-light">add more</p>
                    </div>

                    <div class="interest2" id="interest2">
                      <input type="text" id="interest" name="interest2" value="" />
                      <p onclick="interestThree()" style="color: white;" class="btn btn-lg btn-light">add more</p>
                    </div>


                    <div class="interest3" id="interest3">
                      <input type="text" id="interest" name="interest3" value="" />
                      <p onclick="interestFour()" style="color: white;" class="btn btn-lg btn-light">add more</p>
                    </div>

                    <div class="interest4" id="interest4">
                      <input type="text" id="interest" name="interest4" value="" />
                      <p onclick="interestFive()" style="color: white;" class="btn btn-lg btn-light">add more</p>
                    </div>

                    <div class="interest5" id="interest5">
                      <input type="text" id="interest" name="interest5" value="" />
                    </div>
                  </div>
                </div>
              </ul>
            </div>



            <hr>
            <div class="form-group">
              <label for="personal">PERSONAL INFORMATION:</label>
              <div>
                <div class="person_detail" id="person">
                  <ul>
                    <label>DOB</label>
                    <input  type="date"  name="dob"  class="form-control" id="dob"><br>
                    <label>Father_Name</label>
                    <input type="text"  name="fname" class="form-control" id="father"><br>
                    <label>Languages Known</label>
                    <input type="text"  name="lang"  class="form-control" id="lang"><br>
                    <label>Address</label>
                    <input type="text"  name="address" class="form-control" id="address">
                  </ul>
                </div>
              </div>
            </div><br>
          </div>
         
          <input type="submit" class="btn btn-success btn-lg submit" value="submit">
        </form>
      </div>
  </section>
  <script>
    function educationTwo() {
      var x = document.getElementById("edu2");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }

    function educationThree() {
      var x = document.getElementById("edu3");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }
    function educationFour() {
      var x = document.getElementById("edu4");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }

    function projectTwo() {
      var x = document.getElementById("pro2");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }
    
    function projectThree() {
        var x = document.getElementById("pro3");
        if (x.style.display === "none") {
          x.style.display = "block";
        } else {
          x.style.display = "block";
        }
      }

    function internTwo() {
      var x = document.getElementById("intern2");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }
    
    function internThree() {
        var x = document.getElementById("intern2");
        if (x.style.display === "none") {
          x.style.display = "block";
        } else {
          x.style.display = "block";
        }
      }

    function skillTwo() {
      var x = document.getElementById("skill2");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }

    }
    function skillThree() {
      var x = document.getElementById("skill3");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }
    function skillFour() {
      var x = document.getElementById("skill4");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }
    function skillFive() {
      var x = document.getElementById("skill5");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }
    function skillSix() {
      var x = document.getElementById("skill6");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }
    function skillSeven() {
      var x = document.getElementById("skill7");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }
    function skillEight() {
      var x = document.getElementById("skill8");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }
    function activityTwo() {
      var x = document.getElementById("acti2");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }
    function certificateTwo() {
      var x = document.getElementById("certi2");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }
    function interestTwo() {
      var x = document.getElementById("interest2");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }
    function interestThree() {
      var x = document.getElementById("interest3");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }
    function interestFour() {
      var x = document.getElementById("interest4");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }
    function interestFive() {
      var x = document.getElementById("interest5");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "block";
      }
    }
  </script>
</body>


</html>