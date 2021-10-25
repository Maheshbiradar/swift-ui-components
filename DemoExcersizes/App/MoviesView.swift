//
//  MoviesView.swift
//  DemoExcersizes
//
//  Created by Mahesh on 20/10/21.
//

import SwiftUI

struct MoviesView: View {
    @ObservedObject var movie: MovieViewModel
    
    var body: some View {
        Text(movie.movie.name)
        TextField("Enter", text: $movie.Id)
        
        Button(action: {
            movie.fetchMovies()
        }, label: {
            Text("Click")
        })
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView(movie: MovieViewModel())
    }
}
