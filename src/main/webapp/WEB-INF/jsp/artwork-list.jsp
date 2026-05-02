<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Artworks</title>
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

            <h2>All Artworks</h2>
            <a href="${pageContext.request.contextPath}/addArtwork">
                Add New Artwork
            </a>
            <br/><br/>
            <table border="1" cellpadding="8" cellspacing="0">
                <tr>
                    <th>Title</th>
                    <th>Medium</th>
                    <th>Price</th>
                    <th>Artist</th>
                    <th>Action</th>
                </tr>
                <c:forEach var="a" items="${artworks}">
                    <tr>
                        <td>${a.title}</td>
                        <td>${a.medium}</td>
                        <td>${a.price}</td>
                        <td>${a.artist.name}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/editArtwork/${a.artworkId}">
                                Edit
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>

        </div>
    </div>

</div>
</body>
</html>
