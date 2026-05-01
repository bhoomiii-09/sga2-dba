package com.bhoomi.sga2.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bhoomi.sga2.entity.Artwork;
import com.bhoomi.sga2.repository.ArtworkRepository;

import java.util.List;

@Service
public class ArtworkService {
    @Autowired
    private ArtworkRepository artworkRepository;
    public List<Artwork> getAllArtworks() {
        return artworkRepository.findAll();
    }
    public Artwork saveArtwork(Artwork artwork) {
        return artworkRepository.save(artwork);
    }
    public Artwork getArtworkById(Long id) {
        return artworkRepository.findById(id).orElse(null);
    }
    public List<Object[]> getArtworkWithArtist() {
        return artworkRepository.fetchArtworkWithArtist();
    }
}
