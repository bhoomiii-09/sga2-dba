<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Artists</title>
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

            <h2>All Artists</h2>

            <a href="${pageContext.request.contextPath}/addArtist">
                Add New Artist
            </a>
            <br/><br/>
            
            <table border="1" cellpadding="8" cellspacing="0">
                <tr>
                    <th>Name</th>
                    <th>Country</th>
                    <th>Style</th>
                    <th>Action</th>
                </tr>

                <c:forEach var="a" items="${artists}">
                    <tr>
                        <td>${a.name}</td>
                        <td>${a.country}</td>
                        <td>${a.style}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/editArtist/${a.artistId}">
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
