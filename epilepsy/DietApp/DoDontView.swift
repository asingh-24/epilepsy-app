//
//  DoDontView.swift
//  epilepsy
//
//  Created by Angad Singh on 3/11/23.
//

import SwiftUI

struct DoDontView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            (Color(.white)).ignoresSafeArea()
            
            VStack{
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
                
                VStack(alignment: .center, spacing: 10){
                    Text("Do")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("- Eat a whole, natural diet")
                    Text("- Limit processed foods")
                    Text("- Eat foods higher in fat")
                    Text(" - Try to eat at least 5 servings of fruits and vegetables")
                    Text("- Follow doctor recommendations")
                    Text("- Start a diet under supervision")
                        .padding(.bottom)
                
                }
                
                VStack (alignment: .center, spacing: 10){
                    Text("Don't")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("- Eat foods high in carbs")
                    Text(" - Eat processed foods (including candy)")
                    Text("- Drink milk")
                    Text("- Drink soda/caffiene")
                    Text("- Drink alcohol")
                    Text("- Drink fruit juice ")
                    Text("- Suddenly riwse or lower your glucose levels")
                    
                }
            }
        }
    }
}

struct DoDontView_Previews: PreviewProvider {
    static var previews: some View {
        DoDontView()
    }
}
