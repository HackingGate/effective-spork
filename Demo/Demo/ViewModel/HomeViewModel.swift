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
        @Published private(set) var Items = [
            Item(name: "First Item"),
            Item(name: "Second Item"),
            Item(name: "Third Item"),
        ]
    }
}
