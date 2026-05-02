<html>
<head>
    <title>Add Artist</title>
</head>
<body>

<h2>Add Artist</h2>

<form action="${pageContext.request.contextPath}/saveArtist" method="post">

    Name:
    <input type="text" name="name" /><br/><br/>

    Country:
    <input type="text" name="country" /><br/><br/>

    Style:
    <input type="text" name="style" /><br/><br/>

    <button type="submit">Add Artist</button>

</form>

</body>
</html>
