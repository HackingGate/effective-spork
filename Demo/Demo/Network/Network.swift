//
//  Network.swift
//  Demo
//
//  Created by H G on 2022/07/31.
//

import Foundation

@available(iOS 15.0, *)
public class Network {
    public static let shared = Network()
    private let decoder: JSONDecoder
    
    init() {
        let decoder = JSONDecoder()
        self.decoder = decoder
    }
    
    func GET<JSONModel: Codable>(endpoint: Endpoint) async throws -> JSONModel {
        // Simulate networking
        await sleep(1)
        let data = buildDummyData(endpoint)
        let object = try decoder.decode(JSONModel.self, from: data)
        return object
    }
    
    private func buildDummyData(_ endpoint: Endpoint) -> Data {
        switch endpoint {
            case .items: return Data(DummyJSON.items.utf8)
        }
    }
}
