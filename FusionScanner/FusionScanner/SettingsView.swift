//
//  SettingsView.swift
//  FusionScanner
//
//  Created by John on 12/20/24.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("General")) {
                    Toggle("Enable Feature", isOn: .constant(true))
                    NavigationLink("Sub-Settings", destination: Text("More settings here"))
                }
                
                Section(header: Text("Account")) {
                    Text("User: Jane Doe")
                    Button("Sign Out") {
                        // Sign out logic
                    }
                }
            }
            .navigationTitle("Settings")
            .navigationBarItems(trailing: Button("Done") {
                dismiss()
            })
        }
    }
}
#Preview("App Preview") {
    SettingsView()
        .modelContainer(
            FusionScannerApp().sharedModelContainer
        )
}
