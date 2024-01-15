//
//  FruitNutrients.swift
//  Fructus
//
//  Created by Y K on 15.01.2024.
//

import SwiftUI

struct FruitNutrients: View {
    var fruit: Fruit
    let nutrients: [String] = ["Energy",
                               "Sugar",
                               "Fat",
                               "Protein",
                               "Vitamins",
                               "Minerals"]
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutriotional value per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider()
                        .padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

#Preview {
    FruitNutrients(fruit: fruitsData[0])
        .preferredColorScheme(.dark)
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
}
