//
//  HikeDetailView.swift
//  DemoExcersizes
//
//  Created by Mahesh on 19/10/21.
//

import SwiftUI

struct HikeDetailView: View {
    var hike: Hike
    @State var isZoomed: Bool = false
    
    var body: some View {
        NavigationView {
        VStack {
            Image(hike.image).resizable()
                .scaledToFit()
                //.frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                //.offset(x: 0, y: isZoomed ? -75: -100)
                .aspectRatio(contentMode: isZoomed ? .fit : .fill)
                .onTapGesture {
                    isZoomed.toggle()
                }
            
            Text(hike.name).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
        .navigationBarTitle(Text("Detail"), displayMode: .automatic)
        }
        
    }
}

struct HikeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetailView(hike: Hike.all()[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
