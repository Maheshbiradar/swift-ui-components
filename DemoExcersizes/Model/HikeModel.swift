//
//  HikeModel.swift
//  DemoExcersizes
//
//  Created by Mahesh on 19/10/21.
//

import SwiftUI

struct Hike: Identifiable
{
    let id: Int
    let name: String
    let description: String
    let image: String
    let isValid: Bool
}

extension Hike {
    static func all() -> [Hike] {
        return [
            Hike(id: 1, name: "Test1",description: "This is Test1 for the demo purpose", image: "d1", isValid: true),
            Hike(id: 2, name: "Test2",description: "This is Test1 for the demo good purpose", image: "d2", isValid: true),
            Hike(id: 3, name: "Test3",description: "This is Test1 for the testing purpsose", image: "e1", isValid: false),
            Hike(id: 4, name: "Test4",description: "This is Test1 for the identifiaction purpose", image: "e2", isValid: false)
        ]
    }
}
