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
                if viewModel.Items.count > 0 {
                    List {
                        ForEach(viewModel.Items) {
                            Text($0.name)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
