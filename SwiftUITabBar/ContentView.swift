//
//  ContentView.swift
//  SwiftUITabBar
//
//  Created by Aditya Mittal on 6/18/23.
//

import SwiftUI

struct ContentView: View {
    
    //hiding tab bar
    init(){
        UITabBar.appearance().isHidden = true
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
