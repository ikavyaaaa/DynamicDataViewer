//
//  JSONLoader.swift
//  DynamicDataViewer
//
//  Created by Kavya Krishna on 08/04/25.
//


import Foundation

struct JSONLoader {
    static func load<T: Decodable>(_ filename: String, type: T.Type) -> T? {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let decoded = try? JSONDecoder().decode(T.self, from: data) else {
            return nil
        }
        return decoded
    }
}
