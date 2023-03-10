//
//  AudioManager.swift
//  epilepsy
//
//  Created by Savir Singh on 3/9/23.
//

import Foundation
import AVKit

final class AudioManager: ObservableObject {
  //  static let shared = AudioManager()
    var player: AVAudioPlayer?
        
    func startPlayer(track: String, isPreview: Bool = false) {
        guard let url = Bundle.main.url(forResource: "medmusic" , withExtension: "mp3") else {
            print("Resource not found: \(track)")
            return
        }
        
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
          player =   try AVAudioPlayer(contentsOf: url)
            
            if isPreview {
                player?.prepareToPlay()
            } else {
                player?.play()
            }
            
        } catch  {
            print("Fail to initialize", error)
        }
        
    }
    
}
