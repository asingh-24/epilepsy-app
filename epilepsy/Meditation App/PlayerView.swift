//
//  PlayerView.swift
//  epilepsy
//
//  Created by Savir Singh on 3/9/23.
//

import SwiftUI

struct PlayerView: View {
    @EnvironmentObject var audioManager:  AudioManager
    var meditationVM: MeditationViewModel
    var isPreview: Bool = false
    @State private var value: Double = 0.0
    @State private var isEditing: Bool = false
    @Environment(\.dismiss) var dismiss
    
    let timer = Timer
        .publish(every: 0.5, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        ZStack {
            Image(meditationVM.meditation.image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            VStack(spacing:32) {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size:36))
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                }
                
                //MARK: Title
                Text("30 Minute Meditation Video")
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
                
               //Playback
                if let player = audioManager.player {
                    VStack(spacing:5) {
                        //Playback timeline
                        Slider(value: $value, in: 0...player.duration) { editing in
                            print("editing", editing)
                            isEditing = editing
                            if !editing {
                                player.currentTime = value
                                
                
                            }
                            
                        }
                            .accentColor(.white)
                        //play back time
                        HStack {
                            Text("0:00")
                            Spacer()
                            Text("30:00")
                        }
                        .font(.caption)
                        .foregroundColor(.white)
                    }
                    //playback control
                    HStack {
                        //Repeat button
                        PlaybackControlButton(systemName: "repeat") {
                            
                        }
                        Spacer()
                        //Backward
                        PlaybackControlButton(systemName: "gobackward.10") {
                            
                        }
                        Spacer()
                        //play/pause
                        PlaybackControlButton(systemName: "play.circle.fill", fontSize: 44) {
                            
                        }.onTapGesture {
                            audioManager.startPlayer(track: meditationVM.meditation.track)
                        }
                        Spacer()
                        //forward
                        PlaybackControlButton(systemName: "goforward.10") {
                            
                        }
                        Spacer()
                        //stop
                        PlaybackControlButton(systemName: "stop.fill") {
                            
                        }
                        Spacer()
                    }
                }
                
            }
                    .padding(20)
        } .onAppear() { audioManager.startPlayer(track: meditationVM.meditation.track)
        }
        .onReceive(timer) { _ in
            guard let player = audioManager.player, !isEditing else {return}
            value = player.currentTime
        }
       
    }
}

struct PlayerView_Previews: PreviewProvider {
    static let meditationVM = MeditationViewModel(meditation: Meditation.data)
    static var previews: some View {
        PlayerView(meditationVM: meditationVM, isPreview: true)
            .environmentObject(AudioManager())
    }
}
