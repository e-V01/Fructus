//
//  FruitCardView.swift
//  Fructus
//
//  Created by Y K on 12.01.2024.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROP
    
    // MARK: - BODY

    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: IMAGE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 8, x: 6, y: 8)
                // FRUIT: TITLE

                Text("Blueberry")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),
                            radius: 2, x: 2, y: 2)
                
                // FRUIT: HEADLINE
                Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world")
                    .foregroundStyle(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // BUTTON: START

            } //: VStack
        } //: ZStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueBerryLight"), Color("ColorBlueBerryDark")]),
                                   startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}














// MARK: - PREVIEW
#Preview {
    FruitCardView()
        .previewLayout(.fixed(width: 320, height: 640))
}
