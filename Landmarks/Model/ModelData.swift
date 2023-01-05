//
//  Data.swift
//  Landmarks
//
//  Created by 비바 on 2023/01/05.
//

import Foundation


final class ModelData: ObservableObject{
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}


func load<T: Decodable>(_ filename: String) -> T{
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Coudn't find \(filename) in main bundle")
    }
    do {
        data = try Data(contentsOf:  file)
    } catch {
        fatalError("Coudn't find \(filename) in main bundle \n\(error)")
    }
    do {
        let decorder = JSONDecoder()
        return try  decorder.decode(T.self, from: data)
    } catch  {
        fatalError("Coudn't find \(filename) in main bundle as \(T.self) \n\(error)")
    }
    
}
