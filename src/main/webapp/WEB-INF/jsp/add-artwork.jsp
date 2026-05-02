<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Add Artwork</title>
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

            <h2>Add New Artwork</h2>

            <form action="${pageContext.request.contextPath}/saveArtwork" method="post">
    

                Title: <input type="text" name="title" /><br/><br/>


                Medium: <input type="text" name="medium" /><br/><br/>


                Price: <input type="text" name="price" /><br/><br/>


                Artist:

                <select name="artist.artistId">
                    <c:forEach var="artist" items="${artists}">

                        <option value="${artist.artistId}">
                            ${artist.name}
                        </option>
                    </c:forEach>
                </select>
                <br/><br/>
                <button type="submit">Add Artwork</button>
            </form>
        </div>
    </div>

</div>
</body>
</html>
