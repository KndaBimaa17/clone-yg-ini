<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cinema</title>
    <link rel="stylesheet" type="text/css" href="CSS/style.css">
    <link rel="stylesheet" type="text/css" href="CSS/upcome.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
       <section id="upcomedetails">
        <div class="movie-details">
            <div class="movie-box">
                <div class="video-box">
                    <iframe src="" title="Movie Trailer" frameborder="0" 
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen></iframe>
                    <div class="bot">
                        <div class="left">
                            <div class="kiri-1">
                                <p id="title">Movie Title</p>
                                <div class="lefter">
                                    <p id="details">ReleaseDate | MovieType | production</p>
                                </div>
                                <div class="lefter2">
                                    <p id="casts">casts</p>
                                </div>
                            </div>
                        </div>
                        <div class="right">
                            <div class="righter">
                                <h2>Synopsis</h2>
                                <p>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                                    Quasi ex in modi recusandae consequuntur deserunt cumque doloremque natus, 
                                    similique quae adipisci repellendus fugit, itaque quibusdam eaque. 
                                    Fuga atque sed nostrum odit quasi veniam eum laboriosam quae est molestiae 
                                    officiis optio laudantium ea iste illum id pariatur ducimus consequatur fugit debitis!
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
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
            
        <jsp:include page="footer.jsp"></jsp:include>

    <script src="JS/upcome.js" defer></script>

</body>
</html>
