//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Y K on 19.01.2024.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText: String
    var labelImage: String

    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
