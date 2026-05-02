package com.bhoomi.sga2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import com.bhoomi.sga2.entity.Artist;
import com.bhoomi.sga2.service.ArtistService;

@Controller
public class ArtistController {

    @Autowired
    private ArtistService artistService;

    // READ
    @GetMapping("/artists")
    public String getAllArtists(Model model) {
        model.addAttribute("artists", artistService.getAllArtists());
        return "artist-list";
    }

    // CREATE - show form
    @GetMapping("/addArtist")
    public String showAddForm(Model model) {
        model.addAttribute("artist", new Artist());
        return "add-artist";
    }

    // CREATE - save
    @PostMapping("/saveArtist")
    public String saveArtist(@ModelAttribute Artist artist) {
        artistService.saveArtist(artist);
        return "redirect:/artists";
    }

    // UPDATE - show form
    @GetMapping("/editArtist/{id}")
    public String showEditForm(@PathVariable Long id, Model model) {
        model.addAttribute("artist", artistService.getArtistById(id));
        return "edit-artist";
    }

    // UPDATE - save
    @PostMapping("/updateArtist")
    public String updateArtist(@ModelAttribute Artist artist) {
        artistService.saveArtist(artist);
        return "redirect:/artists";
    }
}
