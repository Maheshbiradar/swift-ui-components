//
//  ObserveModel.swift
//  DemoExcersizes
//
//  Created by Mahesh on 20/10/21.
//

import SwiftUI
import Combine

class Observe: ObservableObject {
    @Published var id: Int = 0
    @Published var name: String = "Test"
}
