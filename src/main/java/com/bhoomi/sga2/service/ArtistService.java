package com.bhoomi.sga2.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bhoomi.sga2.entity.Artist;
import com.bhoomi.sga2.repository.ArtistRepository;

import java.util.List;

@Service
public class ArtistService {
    @Autowired
    private ArtistRepository artistRepository;
    public List<Artist> getAllArtists() {
        return artistRepository.findAll();
    }
    public Artist saveArtist(Artist artist) {
        return artistRepository.save(artist);
    }
    public Artist getArtistById(Long id) {
        return artistRepository.findById(id).orElse(null);
    }
}
