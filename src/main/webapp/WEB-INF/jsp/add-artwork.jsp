<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Add Artwork</title>
</head>
<body>
<h2>Add New Artwork</h2>
<form action="/saveArtwork" method="post">

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
</body>
</html>
