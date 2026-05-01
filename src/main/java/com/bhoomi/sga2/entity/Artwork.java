package com.bhoomi.sga2.entity;

import jakarta.persistence.*;

@Entity
public class Artwork {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long artworkId;
    private String title;
    private String medium;
    private Double price;

    @ManyToOne
    @JoinColumn(name = "artist_id")
    private Artist artist;

    // Getters and Setters
    public Long getArtworkId() {
        return artworkId;
    }
    public void setArtworkId(Long artworkId) {
        this.artworkId = artworkId;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getMedium() {
        return medium;
    }
    public void setMedium(String medium) {
        this.medium = medium;
    }
    public Double getPrice() {
        return price;
    }
    public void setPrice(Double price) {
        this.price = price;
    }
    public Artist getArtist() {
        return artist;
    }
    public void setArtist(Artist artist) {
        this.artist = artist;
    }
}
