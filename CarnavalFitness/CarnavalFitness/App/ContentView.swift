//
//  ContentView.swift
//  CarnavalFitness
//
//  Created by James McDougall on 5/15/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedIndex = 0
    
    var body: some View {
        MainTabView(selectedIndex: $selectedIndex)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
