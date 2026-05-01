package com.bhoomi.sga2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.bhoomi.sga2.entity.Artwork;
import com.bhoomi.sga2.service.ArtistService;
import com.bhoomi.sga2.service.ArtworkService;

@Controller
public class ArtworkController {

    @Autowired
    private ArtworkService artworkService;
    @Autowired
    private ArtistService artistService;

    // READ - to display all artworks
    @GetMapping("/artworks")
    public String getAllArtworks(Model model) {
        model.addAttribute("artworks", artworkService.getAllArtworks());
        return "artwork-list";
    }

    // CREATE - to show form
    @GetMapping("/addArtwork")
    public String showAddForm(Model model) {
        model.addAttribute("artwork", new Artwork());
        model.addAttribute("artists", artistService.getAllArtists());
        return "add-artwork";
    }

    // CREATE - to save artwork
    @PostMapping("/saveArtwork")
    public String saveArtwork(@ModelAttribute Artwork artwork) {
        System.out.println("SAVE ARTWORK CALLED");
        try {
            artworkService.saveArtwork(artwork);
        } catch (Exception e) {
            return "error-page";
        }
        return "redirect:/artworks";
    }

    // UPDATE - to show edit form
    @GetMapping("/editArtwork/{id}")
    public String showEditForm(@PathVariable Long id, Model model) {
        model.addAttribute("artwork", artworkService.getArtworkById(id));
        model.addAttribute("artists", artistService.getAllArtists());
        return "edit-artwork";
    }

    // UPDATE - to save updated artwork
    @PostMapping("/updateArtwork")
    public String updateArtwork(@ModelAttribute Artwork artwork) {
        artworkService.saveArtwork(artwork);
        return "redirect:/artworks";
    }
}
