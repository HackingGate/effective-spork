//
//  ItemCell.swift
//  Demo
//
//  Created by H G on 2022/08/01.
//

import SwiftUI

struct ItemCell: View {
    let item: Item

    var body: some View {
        NavigationLink {
            ItemDetail(item: item)
                .navigationTitle(item.name)
        } label: {
            VStack(alignment: .leading) {
                Text(item.name)
                Text("$\(item.price)")
            }
        }
    }
}

struct ItemCell_Previews: PreviewProvider {
    static var previews: some View {
        ItemCell(item: testItem)
    }
}
