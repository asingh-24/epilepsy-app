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
            Color(.systemFill).ignoresSafeArea()

            VStack(alignment: .leading) {

                VStack(spacing:15){

                    Image("KetoDiet").resizable().aspectRatio(contentMode: .fit).cornerRadius(15)

                    Text("What Should I Eat?")
                        .font(.title).fontWeight(.bold)
                    Text("A good diet is the first step to seizure control. However, consult your doctor before following the suggestions below.")
                        .padding(.bottom)
                    Text("In this app, we recommend you follow  a ketogenic diet, which consists of high-fat, low-carb foods. Below are a few example meals you can follow (click on each image).")
                        .padding(.horizontal)
                }.padding().background(Rectangle().foregroundColor(.white))

                
                VStack(){
                    Text("Example Day 1: American Meals")
                        .fontWeight(.bold)
                    
                    Button {
                        print("Success")
                    } label: {
                        Image("burger").resizable().aspectRatio(contentMode: .fit).cornerRadius(15).shadow(radius:10)
                    }

                    
                    
                }.padding().background(Rectangle().foregroundColor(.white))
                
                
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
