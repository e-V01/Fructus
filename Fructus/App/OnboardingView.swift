//
//  OnboardingView.swift
//  Fructus
//
//  Created by Y K on 14.01.2024.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROP
    var fruits: [Fruit] = fruitsData
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            } //:LOOP
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREView

#Preview {
    OnboardingView(fruits: fruitsData)
}
