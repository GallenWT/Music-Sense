//
//  Music_SenseApp.swift
//  Music Sense
//
//  Created by Gallen W T on 24/05/24.
//

import SwiftUI
import SwiftData

@main
struct Music_SenseApp: App {
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
//            ContentView()
            SplashScreenView()
        }
        .modelContainer(sharedModelContainer)
    }
}
