<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Artworks</title>
</head>
<body>

<h2>All Artworks</h2>

<a href="/addArtwork">Add New Artwork</a>

<table border="1">
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
                <a href="/editArtwork/${a.artworkId}">Edit</a>
            </td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
