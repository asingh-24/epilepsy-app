//
//  epilepsyApp.swift
//  epilepsy
//
//  Created by Savir Singh on 3/9/23.
//

import SwiftUI

@main
struct epilepsyApp: App {
    @StateObject var audioManager = AudioManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioManager)
        }
    }
}
