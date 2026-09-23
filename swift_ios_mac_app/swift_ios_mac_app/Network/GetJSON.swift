//
//  GetJSON.swift
//  swift_ios_mac_app
//
//  Created by Sebastijan Bičak on 23.09.2026..
//

import Foundation

func fetchJson() async throws -> jsonModel? {
    guard let url = URL(string: "http://127.0.0.1:8080/api/getjson") else { throw URLError(.badURL) }
    let (data, response) = try await URLSession.shared.data(from: url)
    let result : jsonModel = try JSONDecoder().decode(jsonModel.self, from: data)
    return result
}
