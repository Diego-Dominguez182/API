package dev.diego.movies;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieService {
    @Autowired
    private MovieRepository movieRepository;

    public List<movie> allMovies(){
        return movieRepository.findAll();
    }
}
