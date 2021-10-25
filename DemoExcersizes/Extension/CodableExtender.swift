//
//  CodableExtender.swift
//  DemoExcersizes
//
//  Created by Mahesh on 19/10/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Loacte the file
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Error \(file)")
        }
        
        // 2. Read the Data
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Error \(file)")
        }
        
        // 3. Deocder
        let decoder = JSONDecoder()
        
        // 4. Load the Data
        
        guard let loadedData = (try? decoder.decode(T.self, from: data)) else {
            fatalError("Error \(file)")
        }
        
        // return
        
        return loadedData
    }
}
