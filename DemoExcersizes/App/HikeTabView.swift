//
//  HikeTabView.swift
//  DemoExcersizes
//
//  Created by Mahesh on 19/10/21.
//

import SwiftUI

struct HikeTabView: View {
    var images: [DataSlider] = Bundle.main.decode("slider.json")
    
    var body: some View {
        NavigationView {
        TabView {
            ForEach(images) { image in
                Image(image.image)
                    .padding()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .navigationBarTitle(Text("Slider"), displayMode: .inline)
    }
        .navigationBarTitle("Hike Slider", displayMode: .inline)
    }
    
}

struct HikeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HikeTabView()
            .previewLayout(.fixed(width: 300, height: 300))
    }
}
