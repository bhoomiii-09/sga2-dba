<html>
<head>
    <title>Add Artist</title>
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

        </div>
    </div>

</div>
</body>
</html>
