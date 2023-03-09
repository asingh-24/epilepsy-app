//
//  MeditationView.swift
//  epilepsy
//
//  Created by Savir Singh on 3/9/23.
//

import SwiftUI

struct MeditationView: View {
    
    var body: some View {
        
        VStack(spacing:0) {
            Image("meditation")
                .resizable()
                .frame(height: UIScreen.main.bounds.height/3)
        
        ZStack {
            Color(red: 24/255, green: 23/255, blue: 22/255)
            
            VStack (alignment: .leading , spacing:24){
                VStack (alignment: .leading, spacing: 8) {
                    Text("Music")
                    Text("0s")
                }
                .font(.subheadline)
                .textCase(.uppercase)
                
                //TITLE
                Text("30 minutes of relaxing music").font(.title)
                
                //Play Button
                Button {
                    
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
            
        }
        .frame(height: UIScreen.main.bounds.height/3 * 2)
        }
        .ignoresSafeArea()
    }
}

struct MeditationView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationView()
    }
}
