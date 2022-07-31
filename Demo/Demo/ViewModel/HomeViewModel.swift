//
//  HomeViewModel.swift
//  Demo
//
//  Created by H G on 2022/07/31.
//

import Foundation
import Combine

extension HomeView {
    @MainActor class HomeViewModel: ObservableObject {
        @Published private(set) var dummyJSONModel: DummyJSONModel = DummyJSONModel(items: [])
        
        @Published var error: Error?
        
        init() {
            Task.init {
                await fetchData()
            }
        }
        
        func fetchData() async {
            do {
                async let dummyJSONModel: DummyJSONModel = Network.shared.GET(endpoint: .items)
                try await self.dummyJSONModel = dummyJSONModel
            } catch let error {
                self.error = error
            }
        }
    }
}
