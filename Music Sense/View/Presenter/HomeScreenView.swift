////
////  HomeScreenView.swift
////  Music Sense
////
////  Created by Gallen W T on 24/05/24.
////

import SwiftUI


struct Sidebar: View {
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
//
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
//                Rectangle()
//                    .foregroundColor(Color("lineColor"))
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
//                Rectangle()
//                    .foregroundColor(Color("lineColor"))
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
//                Rectangle()
//                    .foregroundColor(Color("lineColor"))
            }
                        .padding(.bottom, 70)
//            .navigationTitle("Menua")
        }
        
    }
}

struct MainContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(""))
                .ignoresSafeArea()
            
            LearnMusicView()
                .navigationTitle("Learning Music")
            //            .navigationBarTitleDisplayMode(.inline)
    
                                .font(.largeTitle)
                                .background(.white)
        }
    }
}

struct HomeScreenView: View {
    @State private var isMenuOpen: Bool = false
    
    init() {
            // Customize the navigation bar appearance
            let appearance = UINavigationBarAppearance()
//            appearance.configureWithOpaqueBackground()
//            appearance.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.1)// Change this to your desired color
            appearance.titleTextAttributes = [.foregroundColor: UIColor.black] // Change this to your desired color
            appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.red] // Change this to your desired color
    
            UINavigationBar.appearance().standardAppearance = appearance
//            UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        NavigationSplitView {
            Sidebar()
        } detail: {
            MainContentView()
        }
    }
}

#Preview {
    HomeScreenView()
}
