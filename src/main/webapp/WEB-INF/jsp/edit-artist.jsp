<html>
<head>
    <title>Edit Artist</title>
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

        </div>
    </div>

</div>
</body>
</html>
