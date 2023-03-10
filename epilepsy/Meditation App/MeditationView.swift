//
//  MeditationView.swift
//  epilepsy
//
//  Created by Savir Singh on 3/9/23.
//

import SwiftUI

struct MeditationView: View {
    @StateObject var meditationVM: MeditationViewModel
    @State var showPlayer = false
    
    var body: some View {
        
        VStack(spacing:0) {
            Image(meditationVM.meditation.image)
                .resizable()
                
                .frame(height: UIScreen.main.bounds.height/3)
        
        ZStack {
            Color(red: 24/255, green: 23/255, blue: 22/255)
            
            VStack (alignment: .leading , spacing:24){
                VStack (alignment: .leading, spacing: 8) {
                    Text("Music")
                  //can change content inside parenthesis like this
                    Text(DateComponentsFormatter.abbreviated.string(from: meditationVM.meditation.duration) ?? meditationVM.meditation.duration.formatted() + "s" )
                }
                .font(.subheadline)
                .textCase(.uppercase)
                
                //TITLE
                Text("30 minutes of relaxing music").font(.title)
                
                //Play Button
                Button {
                    showPlayer = true
                } label: {
                    Label("Play", systemImage: "play.fill")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                        .background(.white)
                }
                //Description
                Text("Specially chosen audios that help calm those with epilepsy and reduce the likelihood of seizures.")
                
                Spacer()
                
            }.foregroundColor(.white)
                .padding(20)
                .frame(height: UIScreen.main.bounds.height/3 * 2)
        }

        
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView(meditationVM: meditationVM)
        }
    }
}

struct MeditationView_Previews: PreviewProvider {
    static let meditationVM = MeditationViewModel(meditation: Meditation.data)
    static var previews: some View {
        MeditationView(meditationVM: meditationVM)
            
    }
}
