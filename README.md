# Artist & Artwork Management System
This is a Spring Boot web application developed as part of the "Building Database Applications" course.

The application manages two entities:
- Artist
- Artwork

It supports Create, Read, and Update operations using a layered architecture (Controller, Service, Repository) and JSP for the frontend.

## Features

- Add new Artists and Artworks
- View list of all Artists and Artworks
- Update existing records
- Custom JOIN query to display Artwork with Artist details
- Dashboard-style UI with pastel theme
- Unit testing using JUnit and Mockito

## Technologies Used

- Java 21
- Spring Boot
- Spring Data JPA (Hibernate)
- JSP (Java Server Pages)
- H2 Database
- Maven
- JUnit & Mockito

## Project Structure
```
src/main/java/com/bhoomi/sga2
├── controller
│   ├── HomeController.java
│   ├── ArtworkController.java
│   └── ArtistController.java
│
├── service
│   ├── ArtworkService.java
│   └── ArtistService.java
│
├── repository
│   ├── ArtworkRepository.java
│   └── ArtistRepository.java
│
└── entity
    ├── Artwork.java
    └── Artist.java

src/main/webapp/WEB-INF/jsp
├── home.jsp
├── artwork-list.jsp
├── artist-list.jsp
├── add-artwork.jsp
├── edit-artwork.jsp
├── add-artist.jsp
├── edit-artist.jsp
└── artwork-details.jsp

src/main/resources
├── application.properties
└── data.sql

src/test/java/com/bhoomi/sga2
├── ArtworkServiceTest.java
├── ArtistServiceTest.java
└── ArtworkServiceMockTest.java
```

## How to Run the Project

1. Clone the repository:
   git clone https://github.com/bhoomiii-09/sga2-dba.git

2. Navigate to the project folder

3. Run the application:
   mvnw spring-boot:run

4. Open browser:
   http://localhost:8080

## Database

- H2 in-memory database
- Tables auto-created using JPA
- Sample data inserted using data.sql

## Testing

- Unit testing implemented using JUnit
- Mockito used for mocking repository layer
- Application tested via web interface

##  Author
Bhoomi Hemani
