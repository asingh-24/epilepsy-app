//
//  ContentView.swift
//  epilepsy
//
//  Created by Savir Singh on 3/9/23.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().barTintColor = UIColor.green
    }
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
