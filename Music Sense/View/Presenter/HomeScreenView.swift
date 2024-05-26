////
////  HomeScreenView.swift
////  Music Sense
////
////  Created by Gallen W T on 24/05/24.
////

import SwiftUI

struct MainContentView: View {
    @State private var selectedMusic: MusicDetail?
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(""))
                .ignoresSafeArea()
//            if let selectedMusic = selectedMusic {
            
//                    DetailView(music: selectedMusic)
//            
//            } else {
//                LearnMusicView()
//            }
            LearnMusicView()
                .navigationTitle("Learning Music")
            //            .navigationBarTitleDisplayMode(.inline)
    
//                                .font(.largeTitle)
//                                .background(.white)
        }
    }
}


struct DetailView: View {
    let music: MusicDetail
    
    var body: some View {
        Text("Detail for \(music.judulMusic)")
            .font(.title)
            .padding()
    }
}

struct HomeScreenView: View {
    @State private var isMenuOpen: Bool = false
    @State private var selectedMusic: MusicDetail?
    
    init() {
            // Customize the navigation bar appearance
            let appearance = UINavigationBarAppearance()
//            appearance.configureWithOpaqueBackground()
//            appearance.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.1)// Change this to your desired color
            appearance.titleTextAttributes = [.foregroundColor: UIColor.black] // Change this to your desired color
            appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white] // Change this to your desired color
    
            UINavigationBar.appearance().standardAppearance = appearance
//            UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
//    var body: some View {
//        NavigationSplitView {
//            SideBarView()
//        } detail: {
////            MainContentView()
//            if let selectedMusic = selectedMusic {
//            
//                    DetailView(music: selectedMusic)
//            
//            } else {
//                MainContentView()
//            }
//        }
//    }
    var body: some View {
        NavigationSplitView {
            SideBarView()
        } detail: {
            if let selectedMusic = selectedMusic {
                DetailView(music: selectedMusic)
            } else {
                MainContentView()
            }
        }
    }

}

#Preview {
    HomeScreenView()
}
