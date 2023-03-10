//
//  TabBar.swift
//  epilepsy
//
//  Created by Savir Singh on 3/9/23.
//

import SwiftUI

struct TabBar: View {
     let meditationVM = MeditationViewModel(meditation: Meditation.data)
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(red: 24/255, green: 23/255, blue: 22/255, alpha: 1)
        }
    
    @State var current = 0
    var body: some View {
        
       
        
        TabView(selection: $current) {
            dietView()
                .tag(0)
                .tabItem {
                    Image("person")
                    Text("Diet")
                }
    
        
            MeditationView(meditationVM: MeditationViewModel(meditation: Meditation.data))
                .tag(1)
                .tabItem {
                    Image("person")
                    Text("Meditation")
                }
        
        
            Text("Exercise")
                .tag(0)
                .tabItem {
                    Image("person")
                    Text("Exercise")
                }
        
        
            Text("Monitor")
                .tag(0)
                .tabItem {
                    Image("person")
                    Text("Monitor")
                }
        
       
            Text("Games")
                .tag(0)
                .tabItem {
                    Image("person")
                    Text("Games")
                }
        }
    }
}

/*struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
} */
