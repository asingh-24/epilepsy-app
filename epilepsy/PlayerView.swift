//
//  PlayerView.swift
//  epilepsy
//
//  Created by Savir Singh on 3/9/23.
//

import SwiftUI

struct PlayerView: View {
    @State private var value: Double = 0.0
    
    var body: some View {
        ZStack {
            Image("meditation")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            VStack(spacing:32) {
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size:36))
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                }
                
                //MARK: Title
                Text("30 Minutes Meditation Video")
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
                
                VStack(spacing:5) {
                    Slider(value: $value, in )
                }

            }.padding(20)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
