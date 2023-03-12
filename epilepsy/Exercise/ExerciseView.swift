//
//  ExerciseView.swift
//  epilepsy
//
//  Created by Savir Singh on 3/12/23.
//

import SwiftUI

struct ExerciseView: View {
    @State var showMeditation = false
    @State var showRunning = false
    @State var showWeights = false
    @State var showYoga = false
    @State var showCycling = false
   
    var body: some View {
        
        VStack {
            VStack {
                
                
                
                Text("Select your exercise below").font(.title).padding(.bottom)
                
                
            }
            
            ScrollView(.horizontal) {
                
                HStack {
                    
                    VStack{
                        Text("Monday: Meditation")
                            .fontWeight(.bold)
                        
                        Button {
                            
                          showMeditation = true
                            
                        } label: {
                            Image("meditating").resizable()
                                .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.height/4)
                                .cornerRadius(15).shadow(radius: 15)
                        }
                        
                    }.padding().background(Rectangle().foregroundColor(.white)).cornerRadius(15)
                    VStack{
                        Text("Tuesday: Cardio")
                            .fontWeight(.bold)
                        
                        Button {
                            
                            //showAmerican = true
                            
                        } label: {
                            Image("running").resizable()
                                .frame(width: UIScreen.main.bounds.width/1.5, height: UIScreen.main.bounds.height/4)
                                .cornerRadius(15).shadow(radius: 15)
                        }
                        
                    }.padding().background(Rectangle().foregroundColor(.white)).cornerRadius(15)
                    VStack{
                        Text("Wednesday: Weights")
                            .fontWeight(.bold)
                        
                        Button {
                            
                            //showAmerican = true
                            
                        } label: {
                            Image("weights").resizable()
                                .frame(width: UIScreen.main.bounds.width/1.5, height: UIScreen.main.bounds.height/4)
                                .cornerRadius(15).shadow(radius: 15)
                        }
                        
                    }.padding().background(Rectangle().foregroundColor(.white)).cornerRadius(15)
                 
                    VStack{
                        Text("Thursday: Yoga")
                            .fontWeight(.bold)
                        
                        Button {
                            
                            //showAmerican = true
                            
                        } label: {
                            Image("yoga").resizable()
                                .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.height/4)
                                .cornerRadius(15).shadow(radius: 15)
                        }
                        
                    }.padding().background(Rectangle().foregroundColor(.white)).cornerRadius(15)
                    VStack{
                        Text("Friday: Cycling")
                            .fontWeight(.bold)
                        
                        Button {
                            
                            //showAmerican = true
                            
                        } label: {
                            Image("cycling").resizable()
                                .frame(width: UIScreen.main.bounds.width/1.5, height: UIScreen.main.bounds.height/4)
                                .cornerRadius(15).shadow(radius: 15)
                        }
                        
                    }.padding().background(Rectangle().foregroundColor(.white)).cornerRadius(15)
                }.padding(.bottom)
                    .ignoresSafeArea().fullScreenCover(isPresented: $showMeditation){
                        meditationMonday()
                    }
                
            }
            
            Text("This workout program has been created for the purpose of helping those with epilepsy. Even so, please consult your doctor beforehand to see if it is safe for you to do these workouts. Stay safe! ").padding(.top, 30)
                .padding(.horizontal, 21.0)
                .font(.title2)
            Spacer()
            
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView()
    }
}
