//
//  ContentView.swift
//  FusionScanner
//
//  Created by John on 12/20/24.
//

import SwiftUI
import SwiftData

struct ScannerView: View {
    @State private var showSettings = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Main View")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Button(action: {
                    showSettings = true
                }) {
                    Text("Open Settings")
                        .font(.headline)
                        .padding()
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(8)
                }
            }
            .navigationTitle("Home")
            // Present the SettingsView as a sheet
            .sheet(isPresented: $showSettings) {
                SettingsView()
            }
        }
    }
}
#Preview("App Preview") {
    ScannerView()
        .modelContainer(
            FusionScannerApp().sharedModelContainer
        )
}
