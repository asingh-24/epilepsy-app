//
//  dietView.swift
//  epilepsy
//
//  Created by Angad Singh on 3/9/23.
//

import SwiftUI

struct dietView: View {
    @State var showAmerican = false
    @State var showIndian = false
    @State var showDo = false
    init() {
        UITabBar.appearance().backgroundColor = UIColor(red: 24/255, green: 23/255, blue: 22/255, alpha: 1)
        }
    var body: some View {
        
        
        //TITLE
        ZStack{
            (Color(red: 33/255, green: 90/255, blue: 119/255)).ignoresSafeArea()

            ScrollView() {
                
                VStack(alignment: .leading) {
                    
                    VStack(spacing:15){
                        
                        Image("KetoDiet").resizable().aspectRatio(contentMode: .fit).cornerRadius(15).scaledToFill()
                        
                        
                        
                        Text("What Should I Eat?")
                            .font(.title).fontWeight(.bold).foregroundColor(.white)
                        Text("In this app, we recommend you follow  a ketogenic diet, which consists of high-fat, low-carb foods. However, make sure to consult your doctor for approval.")
                            .foregroundColor(.white)
                            .padding(.horizontal)
                    }.padding().background(Rectangle().foregroundColor(Color(red: 33/255, green: 90/255, blue: 119/255)))
                    
                    VStack(){
                        Text("Example Day 1: American Meal Plan")
                            .fontWeight(.bold)
                        
                        Button {
                            print("Success")
                            showAmerican = true
                            
                        } label: {
                            Image("ketob").resizable().aspectRatio(contentMode: .fit).cornerRadius(15).shadow(radius: 15)
                        }
                        
                    }.padding().background(Rectangle().foregroundColor(.white)).cornerRadius(15)
                    
                    VStack(){
                        Text("Example Day 2: Indian Meal Plan")
                            .fontWeight(.bold)
                        
                        Button {
                            print("Success")
                            showIndian = true
                            
                        } label: {
                            Image("indianfood").resizable().aspectRatio(contentMode: .fit).cornerRadius(15).shadow(radius: 15)
                        }
                        
                    }.padding().background(Rectangle().foregroundColor(.white)).cornerRadius(15)
                    
                    Button {
                        showDo = true
                    } label: {
                        HStack(alignment: .center){
                           Spacer()
                            Text("Dos and Dont's").fontWeight(.bold).foregroundColor(.black)
                            Spacer()
                        }
                        .padding().background(Rectangle().foregroundColor(.white)).cornerRadius(15)
                        
                    }
                    

                }.padding()
            }
            
        }
        .ignoresSafeArea().fullScreenCover(isPresented: $showDo){
            DoDontView()
        }
        .fullScreenCover(isPresented: $showAmerican) {
         AmericanView()
        }.fullScreenCover(isPresented: $showIndian){
            IndianView()
        }

    }
}


struct dietView_Previews: PreviewProvider {
    static var previews: some View {
        dietView()
    }
}
