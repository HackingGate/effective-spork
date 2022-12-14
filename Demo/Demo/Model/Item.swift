//
//  Item.swift
//  Demo
//
//  Created by H G on 2022/07/31.
//

import Foundation

struct Item: Codable {
    let name: String
    let price: Int
    let keywords: [String]
}

#if DEBUG
let testItem = Item(name: "First Item", price: 100, keywords: ["red", "versatile", "inexpensive"])
#endif
