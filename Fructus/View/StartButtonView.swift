//
//  StartButtonView.swift
//  Fructus
//
//  Created by Y K on 12.01.2024.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: PROP
    @AppStorage("isOnboarding") var isOnboarding: Bool?

    //MARK: - BODY
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                
            }
            .padding(.horizontal, 16)
            .padding(.vertical)
            .background(
            Capsule()
                .strokeBorder(Color.white, lineWidth: 1.25)
            )
        } //: BUTTON
        .accentColor(.white)
    }
}



// MARK: PREVIEW
#Preview {
    StartButtonView()
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
}
