<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Artwork Details</title>
</head>
<body>

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
</body>
</html>
