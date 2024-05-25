//
//  LearnMusicView.swift
//  Music Sense
//
//  Created by Gallen W T on 25/05/24.
//

import SwiftUI

struct LearnMusicView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("backgroundColor"))
                .edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false){
                MusicCardViewBox(musics: recentMusic)
                    .padding(.top, 40)
                    .padding(.bottom, 40)
                MusicCardViewBox(musics: recommendedMusic)
                    .padding(.top, 40)
                    .padding(.bottom, 40)
                MusicCardViewRec(musics: trendingMusic)
                    .padding(.top, 40)
                    .padding(.bottom, 40)
                MusicCardViewBox(musics: newMusic)
                    .padding(.top, 40)
                    .padding(.bottom, 40)
            }
        }
    }
}

#Preview {
    LearnMusicView()
}
