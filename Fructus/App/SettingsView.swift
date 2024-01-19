//
//  SettingsView.swift
//  Fructus
//
//  Created by Y K on 19.01.2024.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - Section 1
                    
                    GroupBox {
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            Text("Most fruits are naturally low in fat, sodium and calories. none have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                        
                    } label: {
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                        Divider()
                            .padding(.vertical, 4)
                    }
                    //MARK: - Section 2

                    //MARK: - Section 3

                }
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
        
}
