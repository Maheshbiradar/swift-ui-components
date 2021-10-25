//
//  ServiceManager.swift
//  DemoExcersizes
//
//  Created by Mahesh on 20/10/21.
//

import Foundation

struct ServiceClient {
    
    let baseURL = "https://swapi.dev/api/people/"
    
    func getMovies(id: Int, completion: @escaping (Movie?) -> ()) {
        // 1. Create URL
        let newUrl: String = baseURL + "\(id)"
        if let url = URL(string: newUrl) {
            print(newUrl)
            // 2. Create session
            let session =  URLSession(configuration: .default)
            
            // 3. Create Task
            
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    completion(nil)
                    return
                }
                
                if let safeData = data {
                    completion(parseJSON(data: safeData))
                }
                
            }
            
            // 4. start task
            task.resume()
        }
        
    }
    
    func parseJSON(data: Data) -> Movie? {
        //let dataString: String =  String(data: data, encoding: .utf8)!
      //  print(dataString)
        let decoder = JSONDecoder()
        if let loadedData = try? decoder.decode(Movie.self, from: data) {
            //print(loadedData.name)
            return loadedData
        }
        return nil
    }
    
}
