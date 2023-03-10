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
    @Published private(set) var isLooping: Bool = false
    
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
    
    func playPause() {
        guard let player = player else {
            print("Instance of Audio player not found")
            return
        }
        if player.isPlaying {
            player.pause()
            
        }
        else {
            player.play()
           
        }
    }
    
    func stop() {
        guard let player = player else {return}
        
        if player.isPlaying {
            player.stop()
            
        }
    }
    
    func loop() {
        guard let player = player else {return}
        player.numberOfLoops = player.numberOfLoops == 0 ? -1 : 0
        isLooping = player.numberOfLoops != 0
        print("isLooping", isLooping)
    }
    
}
