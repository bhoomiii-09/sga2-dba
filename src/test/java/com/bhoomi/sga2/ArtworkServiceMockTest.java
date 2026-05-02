package com.bhoomi.sga2;

import com.bhoomi.sga2.entity.Artwork;
import com.bhoomi.sga2.repository.ArtworkRepository;
import com.bhoomi.sga2.service.ArtworkService;

import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.util.Arrays;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class ArtworkServiceMockTest {

    @Mock
    private ArtworkRepository artworkRepository;

    @InjectMocks
    private ArtworkService artworkService;

    public ArtworkServiceMockTest() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testGetAllArtworks_Mock() {
        Artwork a1 = new Artwork();
        Artwork a2 = new Artwork();

        when(artworkRepository.findAll()).thenReturn(Arrays.asList(a1, a2));

        List<Artwork> result = artworkService.getAllArtworks();

        assertEquals(2, result.size());
        verify(artworkRepository, times(1)).findAll();
    }
}
