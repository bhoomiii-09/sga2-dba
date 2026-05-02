package com.bhoomi.sga2.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import com.bhoomi.sga2.entity.Artwork;
import java.util.List;

public interface ArtworkRepository extends JpaRepository<Artwork, Long> {
    @Query("SELECT a.title, a.medium, a.price, ar.name FROM Artwork a JOIN a.artist ar")
    List<Object[]> fetchArtworkWithArtist();
}
