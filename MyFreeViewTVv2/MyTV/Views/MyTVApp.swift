//
//  MyTVApp.swift
//  MyTV
//
//  Created by Chris Milne on 25/08/2025.
//

import SwiftUI
import SwiftData

@main
struct MyTVApp: App {
    @StateObject private var handler = Handler()


    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(handler)
        }
        .modelContainer(for: [SavedChannel.self, SavedProgram.self])

    }
}
