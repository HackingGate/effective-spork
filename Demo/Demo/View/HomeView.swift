//
//  HomeView.swift
//  Demo
//
//  Created by H G on 2022/07/31.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        NavigationView {
            VStack {
                if viewModel.dummyJSONModel.items.count > 0 {
                    List {
                        ForEach(viewModel.dummyJSONModel.items, id: \.name) {
                            ItemCell(item: $0)
                        }
                    }
                } else {
                    Text("Loading...")
                }
            }
            .navigationBarTitle("Demo", displayMode: .inline)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
