//
//  LoadData.swift
//  NC1Simon
//
//  Created by SeungHwanKim on 2022/05/03.
//

import Foundation

func loadJSON<T: Decodable>(fileName: String) -> T {
    guard let fileURL = Bundle.main.url(forResource: fileName, withExtension: ".json")
    else {
        fatalError("can't find \(fileName) in the main bundle.")
    }
    do {
        let data = try Data(contentsOf: fileURL)
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("can't parse data from \(fileName) as \(T.self). error : \(error)")
    }
}
