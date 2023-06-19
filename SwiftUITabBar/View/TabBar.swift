//
//  TabBar.swift
//  SwiftUITabBar
//
//  Created by Aditya Mittal on 6/18/23.
//

import SwiftUI

struct TabBar: View {
    
    @State var current = "Home"
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            
            TabView(selection: $current) {
                HomeView()
                    .tag("Home")
                Text("Camera")
                    .tag("Camera")
            }
            
            HStack(spacing: 0) {
                TabButton(title: "Home", image: "house", selected: $current)
                Spacer()
                    .frame(width: 50)
                TabButton(title: "Camera", image: "camera", selected: $current)
            }
            .padding(.vertical,12)
            .padding(.horizontal)
            .background(Color("tab"))
            .clipShape(Capsule())
            .padding(.horizontal, 25)
            .padding(.bottom, 15)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

