<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Database connection parameters
    String url = "jdbc:mysql://localhost:3306/cinema";
    String username = "root";
    String password = "";
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    int nowPlayingCount = 0;
    int upcomingCount = 0;
    int theatersCount = 0;
    int customersCount = 0;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, username, password);
        stmt = conn.createStatement();

        // Count Now Playing Movies
        rs = stmt.executeQuery("SELECT COUNT(*) FROM movie_nowplay");
        if (rs.next()) {
            nowPlayingCount = rs.getInt(1);
        }
        rs.close();

        // Count Upcoming Movies
        rs = stmt.executeQuery("SELECT COUNT(*) FROM movie_upcome");
        if (rs.next()) {
            upcomingCount = rs.getInt(1);
        }
        rs.close();

        // Count Theaters
        rs = stmt.executeQuery("SELECT COUNT(*) FROM theaters");
        if (rs.next()) {
            theatersCount = rs.getInt(1);
        }
        rs.close();

        // Count Customers
        rs = stmt.executeQuery("SELECT COUNT(*) FROM users");
        if (rs.next()) {
            customersCount = rs.getInt(1);
        }

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }

    // Role-based access control
    String role = (String) session.getAttribute("role");

    if (role == null || !"admin".equals(role)) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="CSS/admin.css"/>
    <script src="https://unpkg.com/feather-icons"></script>
</head>
<body>
<header>
    <nav class="navbar">
        <div class="navbar-logo">
            <a href=".admin.jsp#">Cinema Dashboard</a>
        </div>
        <div class="dropdown2">
            <button id="my-mtix-btn">Welcome, <%= session.getAttribute("username") %>!</button>
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
                <a href="admin-nowplay.jsp">Now Playing Movies</a>
            </div>
            <div class="aside-inner">
                <a href="admin-upcome.jsp">Upcoming Movies</a>
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
                    <p><%= nowPlayingCount %> Movies are playing now</p>
                </div>
                <div class="small-card">
                    <i data-feather="video-off"></i>
                    <p><%= upcomingCount %> Movies Upcoming</p>
                </div>
                <div class="small-card">
                    <i data-feather="monitor"></i>
                    <p><%= theatersCount %> Theaters Operated</p>
                </div>
                <div class="small-card">
                    <i data-feather="users"></i>
                    <p><%= customersCount %> Accounts Registered</p>
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
                "January", "February", "March", "April", "May", "June", "July", "August",
                "September", "October", "November", "December"
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
