//
//  dietView.swift
//  epilepsy
//
//  Created by Angad Singh on 3/9/23.
//

import SwiftUI

struct dietView: View {
    var body: some View {
        
        //TITLE
        ZStack{
            (Color(red: 24/255, green: 23/255, blue: 22/255)).ignoresSafeArea()

            VStack(alignment: .leading) {

                VStack(spacing:15){

                    Image("KetoDiet").resizable().aspectRatio(contentMode: .fit).cornerRadius(15)
                    
                    
                    Text("What Should I Eat?")
                        .font(.title).fontWeight(.bold).foregroundColor(.white)
                    Text("A good diet is the first step to seizure control. However, consult your doctor before following the suggestions below.")
                        .padding(.bottom).foregroundColor(.white)
                    Text("In this app, we recommend you follow  a ketogenic diet, which consists of high-fat, low-carb foods.")
                        .padding(.horizontal).foregroundColor(.white)
                }.padding().background(Rectangle().foregroundColor(Color(red: 24/255, green: 23/255, blue: 22/255)))
                
                VStack(){
                    Text("Example Day 1: American Meal Plan")
                        .fontWeight(.bold)
                    
                    Button {
                        print("Success")
                    } label: {
                        Image("burger").resizable().aspectRatio(contentMode: .fit).cornerRadius(15).shadow(radius: 15)
                    }

                   
                
                    
                }.padding().background(Rectangle().foregroundColor(Color(red: 0.941, green: 224/255, blue: 225/255)))
                
                
                Spacer()

                
            }.padding()

        }

    }
}


struct dietView_Previews: PreviewProvider {
    static var previews: some View {
        dietView()
    }
}
