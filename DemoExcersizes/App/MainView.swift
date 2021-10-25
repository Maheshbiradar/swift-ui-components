//
//  MainView.swift
//  DemoExcersizes
//
//  Created by Mahesh on 19/10/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView().tabItem {
                Image(systemName: "pencil.tip.crop.circle")
                Text("Home")
            }
            HikeGalleryView().tabItem {
                Image(systemName: "folder.badge.person.crop")
                Text("Gallery")
            }
            HikeTabView().tabItem {
                Image(systemName: "folder.badge.person.crop")
                Text("Slider")
            }

        }
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
