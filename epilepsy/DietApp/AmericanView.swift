//
//  AmericanView.swift
//  epilepsy
//
//  Created by Angad Singh on 3/10/23.
//

import SwiftUI

struct AmericanView: View {
    var body: some View {
        ZStack{
            (Color(red: 0.941, green: 224/255, blue: 225/255)).ignoresSafeArea()
            
            VStack{
                Text("Example Day 1: American Meal Plan").font(.title2).fontWeight(.bold).padding(.vertical)
                
                //Breakfast
                HStack{
                    VStack{
                        Text("Breakfast: ").font(.title3).fontWeight(.semibold)
                        Text("Eggs (1)")
                        Text("Bacon (1-2 slices)")
                        Text("Butter (1.5 tbsp)")
                        Text("Strawberries (1-2)")
                             
                    }.padding(.leading)
                    
                    Image("baconegg").resizable().scaledToFit().cornerRadius(15).padding(.horizontal)
                    
                }
                //lunch
                HStack{
                    VStack{
                        Text("Lunch: ").font(.title3).fontWeight(.semibold)
                        Text("Hamburger patty (1)")
                        Text("Cheese (1 slice)")
                        Text("Veggies (Handful - Onions and Tomatos)")
                        
                             
                    }.padding(.leading)
                    
                    Image("nobunburger").resizable().scaledToFit().cornerRadius(15).padding(.horizontal)
                    
                }
                //dinner
                HStack{
                    Text("Dinner: Chicken Soup, Brocolli")
                        .padding(.top)
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
