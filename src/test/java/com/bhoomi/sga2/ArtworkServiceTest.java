package com.bhoomi.sga2;

import com.bhoomi.sga2.entity.Artwork;
import com.bhoomi.sga2.service.ArtworkService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class ArtworkServiceTest {

    @Autowired
    private ArtworkService artworkService;

    @Test
    void testGetAllArtworks() {
        List<Artwork> artworks = artworkService.getAllArtworks();
        assertNotNull(artworks);
    }
}
