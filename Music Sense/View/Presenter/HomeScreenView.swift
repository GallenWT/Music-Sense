//
//  HomeScreenView.swift
//  Music Sense
//
//  Created by Gallen W T on 24/05/24.
//

import SwiftUI

struct HomeScreenView: View {
    @State private var isMenuOpen: Bool = false
    
    var body: some View {
        VStack{
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            VStack{
                Spacer()
                NavigationLink(destination: LearnMusicView()){
                    Text("Learn Music View")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

#Preview {
    HomeScreenView()
}
