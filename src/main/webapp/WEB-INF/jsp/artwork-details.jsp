<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Artwork Details</title>
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

            <h2>Artwork Details (With Artist)</h2>
            
            <table border="1" cellpadding="8">
                <tr>
                    <th>Title</th>
                    <th>Medium</th>
                    <th>Price</th>
                    <th>Artist Name</th>
                </tr>
                <c:forEach var="d" items="${details}">
                    <tr>
                        <td>${d[0]}</td>
                        <td>${d[1]}</td>
                        <td>${d[2]}</td>
                        <td>${d[3]}</td>
                    </tr>
                </c:forEach>
            </table>

        </div>
    </div>

</div>
</body>
</html>
