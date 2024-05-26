//
//  LearnMusicView.swift
//  Music Sense
//
//  Created by Gallen W T on 25/05/24.
//

import SwiftUI

struct LearnMusicView: View {
    @State private var selectedMusic: MusicDetail?
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("backgroundColor"))
                .edgesIgnoringSafeArea(.all)
           
            
                ScrollView(.vertical, showsIndicators: false){
                    VStack(alignment: .leading) {
                    Text("Recent")
                        .font(.custom("RaleWay", size: 36))
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding(.top, 40)
                        .padding(.leading, 40)
                    MusicCardViewBox(musics: recentMusic, selectedMusic: $selectedMusic)
                        .padding(.top, 40)
                        .padding(.bottom, 40)
                    Text("Recommended")
                        .font(.custom("RaleWay", size: 36))
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding(.top, 40)
                        .padding(.leading, 40)
                    MusicCardViewBox(musics: recommendedMusic, selectedMusic: $selectedMusic)
                        .padding(.top, 40)
                        .padding(.bottom, 40)
                    Text("Trending Song")
                        .font(.custom("RaleWay", size: 36))
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding(.top, 40)
                        .padding(.leading, 40)
                    MusicCardViewRec(musics: trendingMusic, selectedMusic: $selectedMusic)
                        .padding(.top, 40)
                        .padding(.bottom, 40)
                    Text("New Release")
                            .font(.custom("RaleWay", size: 36))
                            .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding(.top, 40)
                        .padding(.leading, 40)
                        MusicCardViewBox(musics: newMusic, selectedMusic: $selectedMusic)
                        .padding(.top, 40)
                        .padding(.bottom, 40)
                }
            }
        }
    }
}

#Preview {
    LearnMusicView()
}
