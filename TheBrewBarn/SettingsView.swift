//
//  SettingsView.swift
//  TheBrewBarn
//
//  Created by Amran Abdullahi on 2/5/25.
//

import SwiftUI

struct SettingsView: View {
    @State private var notificationsEnabled = true
    @AppStorage("selectedTheme") private var selectedTheme = "Light"
    @State private var faceIDEnabled = false
    @State private var trackingEnabled = false
    
    let themes = ["Light", "Dark", "System"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    HStack {
                        Text("Location Settings")
                        Spacer()
                        Text("Always On")
                            .foregroundColor(.gray)
                    }
                }
                
                Section {
                    Toggle("Notifications", isOn: $notificationsEnabled)
                    Toggle("Face ID", isOn: $faceIDEnabled)
                }
                
                Section {
                    DisclosureGroup("Privacy Settings") {
                        Toggle(isOn: $trackingEnabled) {
                            Text("Allow us to track you across websites and apps to provide you with personalized ads and improve your experience.")
                                .font(.footnote)
                                .foregroundColor(.gray)
                                .lineLimit(nil)
                        }
                    }
                }
                
                Section(header: Text("Themes")) {
                    Picker("Theme", selection: $selectedTheme) {
                        ForEach(themes, id: \.self) { theme in Text(theme)
                        }
                    }
                    
                    .pickerStyle(SegmentedPickerStyle())
                    .onChange(of: selectedTheme) { newTheme in
                        applyTheme(newTheme)
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }

                func applyTheme(_ theme: String) {
                    guard let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                          let window = scene.windows.first else { return }
                
                    switch theme {
                    case "Light": window.overrideUserInterfaceStyle = .light
                        case "Dark": window.overrideUserInterfaceStyle = .dark
                    default: window.overrideUserInterfaceStyle = .unspecified
                    }
                
            }
        }
    


#Preview {
    SettingsView()
}
