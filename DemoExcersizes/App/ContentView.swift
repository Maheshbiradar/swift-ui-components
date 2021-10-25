//
//  ContentView.swift
//  DemoExcersizes
//
//  Created by Mahesh on 19/10/21.
//

import SwiftUI

struct ContentView: View {
    var hikes: [Hike] = Hike.all()
    @ObservedObject var movie = MovieViewModel()
    
    var body: some View {
        
        NavigationView(content: {
            
            
            //List(self.hikes, id: \.id) { hike in
            //    NavigationLink(destination: HikeDetailView(hike: hike)) {
            //        HikeListItemView(hike: hike)
            //    }
            //
            //}
            
            //ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
            //    ForEach(hikes, id: \.id) { hike in
            //        NavigationLink(destination: HikeDetailView(hike: hike)) {
            //            HikeListItemView(hike: hike)
            //    }
            //    }
            //
            //})
            
            
            
            List{
                ForEach(hikes, id: \.id) { hike in
                    NavigationLink(destination: HikeDetailView(hike: hike)) {
                        HikeListItemView(hike: hike)
                    }
                }
                
                Text(movie.name)
                TextField("Enter", text: $movie.Id)
                
                Button(action: {
                    movie.fetchMovies()
                }, label: {
                    Text("Click")
                })
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            
            
            
            .navigationTitle("Hikes")
            
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(movie: MovieViewModel())
    }
}
