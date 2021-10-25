//
//  MovieModel.swift
//  DemoExcersizes
//
//  Created by Mahesh on 20/10/21.
//

import Foundation

@propertyWrapper
class Uppercase {
    
    private(set) var value: String = ""
    
    var wrappedValue: String {
        get{value}
        set{
            value  = newValue.uppercased()
        }
    }
    
}

class Movie: Codable, ObservableObject {
    //@Uppercase
    var name: String =  ""
    var height: String = ""
}
