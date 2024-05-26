//
//  LearnMusicDetailView.swift
//  Music Sense
//
//  Created by Gallen W T on 26/05/24.
//

import SwiftUI

struct LearnMusicDetailView: View {
    let music: MusicDetail
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("backgroundColor"))
                .ignoresSafeArea()
            Text("Hello, World!")
            Text("Detail for \(music.judulMusic)")
                .font(.title)
                .padding()
                .foregroundColor(.white)
            
        }
        
    }
}
