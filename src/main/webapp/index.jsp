<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cinema</title>
    <link rel="stylesheet" type="text/css" href="CSS/style.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="JS/script.js" defer></script>
</head>
<body>
   <jsp:include page="header-main.jsp" />

    <div class ="slider">
        <div class="slide">
            <img src="images/slide1.png" alt="Image 1">
        </div>
        <div class="slide">
            <img src="images/slide2.png" alt="Image 2">
        </div>
        <div class="slide">
            <img src="images/slide3.png" alt="Image 3">
        </div>
    </div>
    <button class="prev" onclick="moveSlide(-1)">&#10094;</button>
    <button class="next" onclick="moveSlide(1)">&#10095;</button>

    <section id="nowplaying">
        <div class="textnowplay">
            <h2>NOW PLAYING IN CINEMA</h2>
        </div>
        <div class="movieplaying">
            <div class="movie" data-movie="insideout2">
                <a href="moviedetailsnowplay.jsp?movie=insideout2" class="movie-link"><img src="images/insideout2.png" alt="Inside Out 2"></a>
                <p>INSIDE OUT 2</p>
            </div>
            <div class="movie" data-movie="badboys">
                <a href="moviedetailsnowplay.jsp?movie=badboys" class="movie-link"><img src="images/badboys.png" alt="Badboys : Ride or Die"></a>
                <p>BAD BOYS : RIDE OR DIE</p>
            </div>
            <div class="movie" data-movie="dilan">
                <a href="moviedetailsnowplay.jsp?movie=dilan" class="movie-link"><img src="images/dilan.png" alt="Dilan 1983 Wo Ai Ni"></a>
                <p>DILAN 1983 WO AI NI</p>
            </div>
            <div class="movie" data-movie="grandma">
                <a href="moviedetailsnowplay.jsp?movie=grandma" class="movie-link"><img src="images/grandma.png" alt="How To Make Millions before Grandma Dies"></a>
                <p>HOW TO MAKE MILLIONS BEFORE GRANDMA DIES</a>
            </div>
            <div class="movie" data-movie="garfield">
                <a href="moviedetailsnowplay.jsp?movie=garfield" class="movie-link"><img src="images/garfield.png" alt="The Garfield Movie"></a>
                <p>THE GARFIELD MOVIE</p>
            </div>
            <div class="movie" data-movie="haikyu">
                <a href="moviedetailsnowplay.jsp?movie=haikyu" class="movie-link"><img src="images/haikyu.png" alt="Haikyu!! The Dumpster Battle"></a>
                <p>HAIKYU!! THE DUMPSTER BATTLE</p>
            </div>
            <div class="movie" data-movie="pakutanahjawa">
                <a href="moviedetailsnowplay.jsp?movie=pakutanahjawa" class="movie-link"><img src="images/pakutanahjawa.png" alt="Paku Tanah Jawa"></a>
                <p>PAKU TANAH JAWA</p>
            </div>
            <div class="movie" data-movie="strangers">
                <a href="moviedetailsnowplay.jsp?movie=strangers" class="movie-link"><img src="images/strangers.png" alt="The Strangers: Chapter 1"></a>
                <p>THE STRANGERS: CHAPTER 1</p>
            </div>
            <div class="movie" data-movie="conan">
                <a href="moviedetailsnowplay.jsp?movie=conan" class="movie-link"><img src="images/conan.png" alt="Detective Conan vs Kid The Phantom Thief"></a>
                <p>DETECTIVE CONAN VS KID THE PHANTOM THIEF</p>
            </div>
            <div class="movie" data-movie="theplot">
                <a href="moviedetailsnowplay.jsp?movie=theplot" class="movie-link"><img src="images/theplot.png" alt="The Plot"></a>
                <p>THE PLOT</p>
            </div>
            <div class="movie" data-movie="ipar">
                <a href="moviedetailsnowplay.jsp?movie=ipar" class="movie-link"><img src="images/ipar.png" alt="Ipar adalah Maut"></a>
                <p>IPAR ADALAH MAUT</p>
            </div>
            <div class="movie" data-movie="sengkolo">
                <a href="moviedetailsnowplay.jsp?movie=sengkolo" class="movie-link"><img src="images/sengkolo.png" alt="Sengkolo: Malam Satu Suro"></a>
                <p>SENGKOLO: MALAM SATU SURO</p>
            </div>
        </div>
    </section>
    
   <section id="upcoming">
    <div class="textupcome">
        <h2>COMING SOON IN CINEMA</h2>
    </div>
    <div class="upcoming">
        <div class="movie" data-movie="exorcism">
            <a href="moviedetailsupcome.jsp?movie=exorcism" class="movie-link"><img src="images/exorcism.jpg" alt="The Exorcism"></a>
            <p>THE EXORCISM</p>
        </div>
        <div class="movie" data-movie="despicableme4">
            <a href="moviedetailsupcome.jsp?movie=despicableme4" class="movie-link"><img src="images/despicableme4.jpg" alt="Despicable Me 4"></a>
            <p>DESPICABLE ME 4</p>
        </div>
        <div class="movie" data-movie="twisters">
            <a href="moviedetailsupcome.jsp?movie=twisters" class="movie-link"><img src="images/twisters.png" alt="Twisters"></a>
            <p>TWISTERS</p>
        </div>
        <div class="movie" data-movie="deadpool">
            <a href="moviedetailsupcome.jsp?movie=deadpool" class="movie-link"><img src="images/deadpool.jpg" alt="Deadpool vs Wolverine"></a>
            <p>DEADPOOL VS WOLVERINE</p>
        </div>
        <div class="movie" data-movie="myboo">
            <a href="moviedetailsupcome.jsp?movie=myboo" class="movie-link"><img src="images/myboo.png" alt="My Boo"></a>
            <p>MY BOO</p>
        </div>
    </div>
    </section>

    <section id="theaters">
        <div class="texttheater">
            <h2>THEATER</h2>
        </div>
    <div class="theater">
    <div class="dropdown">
        <select id="city-select" onchange="showCinemas()">
            <option value="">Select City</option>
            <option value="JAKARTA">JAKARTA</option>
            <option value="BOGOR">BOGOR</option>
            <option value="DEPOK">DEPOK</option>
            <option value="TANGERANG">TANGERANG</option>
            <option value="BEKASI">BEKASI</option>
        </select>
    </div>

    <div id="cinema-list" class="cinema-list">
    </div>
    </div>
    </section>

    <section id="privacy-policy" class="popup-form hide">
        <div class="popup-content">
            <span class="close-btn">&times;</span>
            <h2>Privacy Policy</h2>
            <h4>INFORMATION WE COLLECT
                PERSONAL INFORMATION
                Personal Information may be submitted to NSR for the purposes of <br>
                (a) receiving information from us;<br>
                (b) buy movie ticket through Site; and <br>
                (c) other purposes to support Service through Site. 
                </h4>
        </div>
    </section>

    <section id="contact-us">
        <div class="contact-us">
        <p>Cinema</p>
        <p>Best Web For Movie Lovers In Indonesia! Movie Entertainment Platform From Cinema To Online Movie Streaming Selections. - For more information, Please support us with follow this link bellow:</p>
        <div class="social">
            <a href="#"><i class="fa-brands fa-linkedin"></i></a>
            <a href="#"><i class="fa-brands fa-instagram"></i></a>
            <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
        </div>
    </div>

    <!--login-->
    <div id="login-popup" class="popup-form hide">
        <div class="popup-content">
            <span class="close-btn" onclick="closePopup(this)">&times;</span>
            <h2>Login to My Mtix</h2>
            <form id="login-form">
                <label for="login-email">Email:</label>
                <input type="text" id="login-email" name="loginemail" required>
                <label for="login-password">Password:</label>
                <input type="password" id="login-password" name="loginpassword" required>
                <button type="submit" id="loginsubmit">Login</button>
            </form>
            <p>Don't have an account? <a href="#" id="register-link">Register now</a></p>
        </div>
    </div>

    <!-- Failed login popup -->
    <div id="failedloginPopup" class="popup-form hide">
        <div class="popup-content">
            <span class="close-btn" onclick="closePopup(this)">&times;</span>
            <h2>Failed to Login</h2>
            <p>Invalid Email or Password. Please check your username and password again.</p>
        </div>
    </div>

    <!-- Failed login popup (max)-->
    <div id="failedloginmaxPopup" class="popup-form hide">
        <div class="popup-content">
            <span class="close-btn" onclick="closePopup(this)">&times;</span>
            <h2>Exiting Program...</h2>
            <p>Failed to login. Maximum Attempts Reached.</p>
        </div>
    </div>

    <!-- Success login popup -->
    <div id="successloginPopup" class="popup-form hide">
        <div class="popup-content">
            <span class="close-btn" onclick="closePopup(this)">&times;</span>
            <h2>yeeyyyyyy</h2>
            <p>Welcome Back!</p>
        </div>
    </div>

    <!-- Register Pop-up Form -->
    <div id="register-popup" class="popup-form hide">
        <div class="popup-content">
            <span class="close-btn" onclick="closePopup(this)">&times;</span>
            <h2>Register for My Mtix</h2>
            <form id="register-form">
                <label for="register-name">Name:</label>
                <input type="text" id="register-name" name="registname" required>
                <label for="register-email">Email:</label>
                <input type="text" id="register-email" name="registemail" required>
                <label for="register-password">Password:</label>
                <input type="password" id="register-password" name="registpassword" required>
                <button type="submit" id="registsubmit">Register Now</button>
            </form>
        </div>
    </div>
    
    <!-- Success regist popup -->
    <div id="successregistPopup" class="popup-form hide">
        <div class="popup-content">
            <span class="close-btn" onclick="closePopup(this)">&times;</span>
            <h2>yeeyyyyyy</h2>
            <p>You have successfully regist your account</p>
        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>
     

</body>
</html>