<html>
<head>
    <title>Edit Artist</title>
</head>
<body>

<h2>Edit Artist</h2>

<form action="${pageContext.request.contextPath}/updateArtist" method="post">

    <input type="hidden" name="artistId" value="${artist.artistId}" />

    Name:
    <input type="text" name="name" value="${artist.name}" /><br/><br/>

    Country:
    <input type="text" name="country" value="${artist.country}" /><br/><br/>

    Style:
    <input type="text" name="style" value="${artist.style}" /><br/><br/>

    <button type="submit">Update Artist</button>

</form>

</body>
</html>
