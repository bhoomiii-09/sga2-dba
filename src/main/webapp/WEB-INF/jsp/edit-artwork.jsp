<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Edit Artwork</title>
</head>
<body>

<h2>Edit Artwork</h2>

<form action="${pageContext.request.contextPath}/updateArtwork" method="post">

    <!-- Hidden ID field -->
    <input type="hidden" name="artworkId" value="${artwork.artworkId}" />

    Title:
    <input type="text" name="title" value="${artwork.title}" /><br/><br/>

    Medium:
    <input type="text" name="medium" value="${artwork.medium}" /><br/><br/>

    Price:
    <input type="text" name="price" value="${artwork.price}" /><br/><br/>

    Artist:
    <select name="artist.artistId">
        <c:forEach var="artist" items="${artists}">
            <option value="${artist.artistId}"
                <c:if test="${artist.artistId == artwork.artist.artistId}">
                    selected
                </c:if>>
                ${artist.name}
            </option>
        </c:forEach>
    </select>
    <br/><br/>
    <button type="submit">Update Artwork</button>

</form>
</body>
</html>
