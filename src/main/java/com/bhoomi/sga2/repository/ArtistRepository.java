package com.bhoomi.sga2.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.bhoomi.sga2.entity.Artist;

public interface ArtistRepository extends JpaRepository<Artist, Long> {
}
