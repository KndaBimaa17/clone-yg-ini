	<%@ page import="jakarta.servlet.http.*" %>
	<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<%
	    HttpSession sessions = request.getSession();
	    String role = (String) sessions.getAttribute("role");
	
	    if (role == null || !"admin".equals(role)) {
	        response.sendRedirect("index.jsp");
	    }
	%>
	<!DOCTYPE html>
	<html lang="en">
	  <head>
	    <meta charset="UTF-8" />
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	    <title>Admin Dashboard</title>
	    <link rel="stylesheet" href="CSS/admin.css" />
	    <script src="https://unpkg.com/feather-icons"></script>
	  </head>
	  <body>
	    <header>
	      <nav class="navbar">
	        <div class="navbar-logo">
	          <a href=".admin.jsp#">Cinema Dashboard</a>
	        </div>
	
	<div class="dropdown2">
      <button id="my-mtix-btn">Welcome, <%= sessions.getAttribute("username") %>!</button>
      <div class="dropdown-content2" id="my-mtix-dropdown">
	        <a href="logout.jsp">Logout</a>
      </div>
    </div>
	      </nav>
	      <aside>
          <div class="aside-wrap">
            <div class="aside-inner">
              <a href="admin.jsp">Main Dashboard</a>
            </div>
            <div class="aside-inner">
              <a href="admin-nowplay.jsp">Nowplay Movies</a>
            </div>
            <div class="aside-inner">
              <a href="admin-upcome.jspl">Upcoming Movies</a>
            </div>
            <div class="aside-inner">
              <a href="admin-reviews.jsp">Movie Reviews</a>
            </div>
            <div class="aside-inner">
              <a href="admin-theaters.jsp">Theaters</a>
            </div>
            <div class="aside-inner">
              <a href="admin-user.jsp">User Management</a>
            </div>
          </div>
        </aside>
	    </header>
	    <main>
	      <section id="hero">
	        <div class="hero-wrap">
	          <div class="hero-1">
	            <p>Cinema Dashboard - <span id="date-time"></span></p>
	          </div>
	          <div class="hero-2">
	            <div class="small-card">
	              <i data-feather="film"></i>
	              <p>12 Movies are playing now</p>
	            </div>
	            <div class="small-card">
	              <i data-feather="video-off"></i>
	              <p>5 Movies Upcoming</p>
	            </div>
	            <div class="small-card">
	              <i data-feather="monitor"></i>
	              <p>10 Theaters Operated</p>
	            </div>
	            <div class="small-card">
	              <i data-feather="users"></i>
	              <p>10000 Customers come perday</p>
	            </div>
	          </div>
	          <div class="hero-3">
	            <a href="admin-nowplay.jsp" class="big-card">
	              <p>Manage Nowplaying Table<i data-feather="plus-circle"></i></p>
	            </a>
	            <a href="admin-upcome.jsp" class="big-card">
	              <p>Manage Upcoming Table <i data-feather="plus-circle"></i></p>
	            </a>
	            <a href="admin-reviews.jsp" class="big-card">
	              <p>Manage Reviews Table <i data-feather="plus-circle"></i></p>
	            </a>
	            <a href="admin-theaters.jsp" class="big-card">
	              <p>Manage Theaters Table <i data-feather="plus-circle"></i></p>
	            </a>
	            <a href="admin-user.jsp" class="big-card">
	              <p>Manage User Table <i data-feather="plus-circle"></i></p>
	            </a>
	          </div>
	        </div>
	      </section>
	    </main>
	    <script>
	      feather.replace();
	    </script>
	    <script>
	      window.addEventListener("load", () => {
	        clock();
	        function clock() {
	          const today = new Date();
	          const hours = today.getHours();
	          const minutes = today.getMinutes();
	          const seconds = today.getSeconds();
	          const hour = hours < 10 ? "0" + hours : hours;
	          const minute = minutes < 10 ? "0" + minutes : minutes;
	          const second = seconds < 10 ? "0" + seconds : seconds;
	          const hourTime = hour > 12 ? hour - 12 : hour;
	          const ampm = hour < 12 ? "AM" : "PM";
	          const month = today.getMonth();
	          const year = today.getFullYear();
	          const day = today.getDate();
	          const monthList = [
	            "January",
	            "February",
	            "March",
	            "April",
	            "May",
	            "June",
	            "July",
	            "August",
	            "September",
	            "October",
	            "November",
	            "December",
	          ];
	          const date = day + " " + monthList[month];
	          const time = hourTime + ":" + minute + ":" + second + " " + ampm;
	          const dateTime = date + " (" + time + ") ";
	          document.getElementById("date-time").innerHTML = dateTime;
	          setTimeout(clock, 1000);
	        }
	      });
	    </script>
	  </body>
	</html>
