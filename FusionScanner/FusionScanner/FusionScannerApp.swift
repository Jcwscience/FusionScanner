//
//  FusionScannerApp.swift
//  FusionScanner
//
//  Created by John on 12/20/24.
//

import SwiftUI
import SwiftData

@main
struct FusionScannerApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ScannerView()
        }
        .modelContainer(sharedModelContainer)
    }
}
#Preview("App Preview") {
    ScannerView()
        .modelContainer(
            FusionScannerApp().sharedModelContainer
        )
}
