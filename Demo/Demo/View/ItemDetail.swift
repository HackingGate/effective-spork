//
//  ItemDetail.swift
//  Demo
//
//  Created by H G on 2022/08/01.
//

import SwiftUI

struct ItemDetail: View {
    let item: Item

    var body: some View {
        VStack(alignment: .leading) {
            Text("Price")
                .font(.system(size: 12))
                .fontWeight(.light)
            Text("$\(item.price)")
                .font(.system(size: 24))
                .fontWeight(.bold)
            Spacer()
                .frame(height: 30)
            Text("Keywords")
                .font(.system(size: 12))
                .fontWeight(.light)
            ForEach(item.keywords, id: \.self) {
                Text($0)
            }
        }
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(item: testItem)
    }
}
