//
//  OnboardingView.swift
//  Fructus
//
//  Created by Y K on 14.01.2024.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROP
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(0 ..< 5) { item in
                FruitCardView()
            } //:LOOP
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREView

#Preview {
    OnboardingView()
}
