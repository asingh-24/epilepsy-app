//
//  AmericanView.swift
//  epilepsy
//
//  Created by Angad Singh on 3/10/23.
//

import SwiftUI

struct AmericanView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            (Color(.white)).ignoresSafeArea()
            
            VStack{
                //Dismiss button
                HStack {
                   
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size:36))
                            .foregroundColor(.black)
                       
                    }
                    Spacer()
                    
                }.padding([.leading, .bottom, .trailing])
                
                
                Text("Example Day 1: American Meal Plan").font(.title2).fontWeight(.bold).padding(.horizontal)
                
                //Breakfast
                HStack{
                    VStack(alignment: .leading){
                        Text("Breakfast: ").font(.title3).fontWeight(.semibold)
                        Text("Eggs (2)")
                        Text("Bacon (1-2 slices)")
                        Text("Butter (1.5 tbsp)")
                        Text("Strawberries (1-2)")
                             
                    }.padding(.leading)
                    
                    Image("baconegg").resizable().scaledToFit().cornerRadius(15).padding(.horizontal)
                    
                }
                //lunch
                HStack{
                    VStack(alignment: .leading){
                        Text("Lunch: ").font(.title3).fontWeight(.semibold)
                        Text("Hamburger patty (1)")
                        Text("Cheese (1 slice)")
                        Text("Veggies (Handful)")
                        
                             
                    }.padding(.leading)
                    
                    Image("nobunburger").resizable().scaledToFit().cornerRadius(15).padding(.horizontal)
                    
                }
                //dinner
                HStack{
                    VStack(alignment: .leading){
                        Text("Dinner:").font(.title3).fontWeight(.semibold)
                        Text("Chicken Soup (1 cup)")
                        Text("Brocolli (0.5 - 1 cup)")
                    }.padding(.leading)
                    
                    Image("soup").resizable().scaledToFit().cornerRadius(15).padding(.horizontal)
                        
                }
                //snack
                HStack{
                    VStack(alignment: .leading){
                        Text("Snack:").font(.title3).fontWeight(.semibold)
                        Text("Bluberries (handful)")
                        Text("Greek yogurt (0.5 cup)")
                    }.padding(.leading)
                    
                    Image("greeky").resizable().scaledToFit().cornerRadius(15).padding(.horizontal)
                        
                }
                
            }
        }
        
        
    }
}

struct AmericanView_Previews: PreviewProvider {
    static var previews: some View {
        AmericanView()
    }
}
