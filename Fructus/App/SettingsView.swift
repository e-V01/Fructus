//
//  SettingsView.swift
//  Fructus
//
//  Created by Y K on 19.01.2024.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
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
                    GroupBox {
                        
                    } label: {
                        
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                        Divider()
                            .padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            Text("Restart".uppercased())
                        }
                    }

                    //MARK: - Section 3
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "Y Kuhta")
                        SettingsRowView(name: "Designer", content: "R. Petras")
                        SettingsRowView(name: "Compatability", content: "iOS 17")
                        SettingsRowView(name: "Website", linkLabel: "Apple SwiftUI tutorial", linkDestination: "developer.apple.com/tutorials/swiftui")
                        SettingsRowView(name: "Github", linkLabel: "e-V01", linkDestination: "github.com/e-V01")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")


                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                        
                    }
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
