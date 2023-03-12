//
//  meditationMonday.swift
//  epilepsy
//
//  Created by Savir Singh on 3/12/23.
//

import SwiftUI

struct meditationMonday: View {
    @Environment(\.dismiss) var dismiss
    init() {
        UITabBar.appearance().backgroundColor = UIColor(red: 24/255, green: 23/255, blue: 22/255, alpha: 1)
        }
    var body: some View {
      
        ZStack {
            
            
            Image("meditation")
            VStack {
                Button {
                    
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size:36))
                        .foregroundColor(.white)
                } .padding(.horizontal)
                Spacer().frame(height: UIScreen.main.bounds.height/1.3)
                    
            }
        
            VStack {
                Spacer().frame(height: UIScreen.main.bounds.height/1.3)
                Text("Each Monday, the exercise you will complete will meditation.  You will meditate with our built-in meditation app feature. To access it, please exit out of this section and click on the text \"meditation\". Each week you can click the play button and relax for 30 minutes with some calming meditation music.")
                    .padding().padding(.bottom)
                    .background(Rectangle().foregroundColor(.white))
                    .cornerRadius(15)
                    .frame(width: UIScreen.main.bounds.width)
            
               
                
            }
            
               
                
            
        } 
            }
}

struct meditationMonday_Previews: PreviewProvider {
    static var previews: some View {
        meditationMonday()
    }
}
