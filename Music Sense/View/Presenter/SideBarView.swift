//
//  SideBarView.swift
//  Music Sense
//
//  Created by Gallen W T on 26/05/24.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("sidebarColor"))
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Text("Menu")
                    .font(.custom("Raleway", size: 36))
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding(30)
                Rectangle()
                    .foregroundColor(Color("lineColor"))
                    .frame(height: 1)
                NavigationLink(destination: LearnMusicView()) {
                    HStack {
                        Image("learnMusic")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .aspectRatio(contentMode: .fit)
                        Text("Learn Music")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                }.padding(30)
                Rectangle()
                    .foregroundColor(Color("lineColor"))
                    .frame(height: 1)
                NavigationLink(destination: ChordLibraryView()) {
                    
                    HStack {
                        Image("chordLibrary")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .aspectRatio(contentMode: .fit)
                        Text("Chord Library")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                }.padding(30)
                Rectangle()
                    .foregroundColor(Color("lineColor"))
                    .frame(height: 1)
                NavigationLink(destination: MetronomeView()) {
                    HStack {
                        Image("metronome")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .aspectRatio(contentMode: .fit)
                        Text("Metronome")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    
                }.padding(30)
                Rectangle()
                    .foregroundColor(Color("lineColor"))
                    .frame(height: 1)
            }
                        .padding(.bottom, 80)
            
        }
    }
}

#Preview {
    SideBarView()
}
