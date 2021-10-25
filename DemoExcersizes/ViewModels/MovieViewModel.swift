//
//  MovieViewModel.swift
//  DemoExcersizes
//
//  Created by Mahesh on 20/10/21.
//

import Foundation



class MovieViewModel: ObservableObject {
    @Published var movie: Movie = Movie()
    var service: ServiceClient
    
    init() {
        self.service = ServiceClient()
    }
    
    var Id: String = ""
    
    var name: String {
        return movie.name
    }
    
    func fetchMovies() {
        self.service.getMovies(id: Int(Id)!) { movie in
            
            if let movie = movie {
                print(movie.name)
                DispatchQueue.main.async {
                    self.movie = movie
                }
            }
        }
    }
}
