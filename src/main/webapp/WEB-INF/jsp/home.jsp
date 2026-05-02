<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<div class="container">

    <!-- Sidebar -->
    <div class="sidebar">
        <h3>Dashboard</h3>
        <a href="${pageContext.request.contextPath}/artworks">Artworks</a>
        <a href="${pageContext.request.contextPath}/artists">Artists</a>
        <a href="${pageContext.request.contextPath}/artworkDetails">Details</a>
    </div>

    <!-- Content -->
    <div class="content">
        <div class="card">

            <h2>Welcome to Art Management System!</h2>
            <p>This application allows you to manage Artists and Artworks.</p>

            <br>

            <h3>Quick Actions</h3>
            <ul>
                <li><a href="${pageContext.request.contextPath}/artworks">View Artworks</a></li>
                <li><a href="${pageContext.request.contextPath}/addArtwork">Add Artwork</a></li>
                <li><a href="${pageContext.request.contextPath}/artists">View Artists</a></li>
                <li><a href="${pageContext.request.contextPath}/addArtist">Add Artist</a></li>
            </ul>

        </div>
    </div>

</div>

</body>
</html>
