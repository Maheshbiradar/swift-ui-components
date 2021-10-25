//
//  DemoExcersizesApp.swift
//  DemoExcersizes
//
//  Created by Mahesh on 19/10/21.
//

import SwiftUI

@main
struct DemoExcersizesApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(Observe())
        }
    }
}
