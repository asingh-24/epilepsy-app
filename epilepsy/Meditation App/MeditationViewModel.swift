//
//  MeditationViewModel.swift
//  epilepsy
//
//  Created by Savir Singh on 3/9/23.
//

import Foundation

final class MeditationViewModel: ObservableObject {
    private (set) var meditation: Meditation
    
    init(meditation: Meditation) {
        self.meditation = meditation
    }
}
struct Meditation {
    let id = UUID()
    let title: String
    let description: String
    let duration: TimeInterval
    let track: String
    let image: String
    
    static let data = Meditation(title: "30 minute relaxing meditation", description: "Specially chosen audios that help calm those with epilepsy and reduce the likelihood of seizures.", duration: 1812, track: "medmusic", image: "meditation")
    
}
