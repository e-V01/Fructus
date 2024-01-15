//
//  ContentView.swift
//  Fructus
//
//  Created by Y K on 12.01.2024.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 2)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
