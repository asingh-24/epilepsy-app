//
//  IndianView.swift
//  epilepsy
//
//  Created by Angad Singh on 3/11/23.
//

import SwiftUI

struct IndianView: View {
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
                
                
                Text("Example Day 2: Indian Meal Plan").font(.title2).fontWeight(.bold).padding(.horizontal)
                
                //Breakfast
                HStack{
                    VStack(alignment: .leading){
                        Text("Breakfast: ").font(.title3).fontWeight(.semibold)
                        Text("Masala Omelette (2 eggs)")
                        Text("Cheese (1 slice)")
                                
                    }.padding(.leading)
                    
                    Image("masala").resizable().scaledToFit().cornerRadius(15).padding(.horizontal)
                    
                }
                //lunch
                HStack{
                    VStack(alignment: .leading){
                        Text("Lunch: ").font(.title3).fontWeight(.semibold)
                        Text("Paneer Tikka (3-4 pieces)")
                        Text("Cauliflower palau (0.5 cup)")

                             
                    }.padding(.leading)
                    
                    Image("paneer").resizable().scaledToFit().cornerRadius(15).padding(.horizontal)
                    
                }
                //dinner
                HStack{
                    VStack(alignment: .leading){
                        Text("Dinner:").font(.title3).fontWeight(.semibold)
                        Text("Almond flour chapati (2)")
                        Text("Tandoori Chicken (2 pieces)")
                    }.padding(.leading)
                    
                    Image("chicken").resizable().scaledToFit().cornerRadius(15).padding(.horizontal)
                        
                }
                //snack
                HStack{
                    VStack(alignment: .leading){
                        Text("Snack:").font(.title3).fontWeight(.semibold)
                        Text("Salad + Olive oil")
                        Text("(Avocados, carrots, cucumbers, lettuce)")
                    }.padding(.horizontal)
                    
                    Image("salad").resizable().scaledToFit().cornerRadius(15).padding(.horizontal)
                        
                }
                
            }
        }
        
        
    }
}

struct IndianView_Previews: PreviewProvider {
    static var previews: some View {
        IndianView()
    }
}
