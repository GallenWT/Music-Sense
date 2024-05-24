//
//  Music Card.swift
//  Music Sense
//
//  Created by Gallen W T on 24/05/24.
//

import SwiftUI

struct MusicCardViewBox: View {
    var musics : [MusicDetail]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 40) {
                ForEach(musics) { music in
                    VStack(alignment: .leading) {
                        Image(music.coverMusic)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        Text(music.judulMusic)
                            .font(.custom("Raleway", size: 32))
                            .fontWeight(.semibold)
                            .lineLimit(1)
                        Text(music.singerMusic)
                            .font(.custom("Raleway", size: 14))
                            .fontWeight(.regular)
                            .lineLimit(1)
                    }
                }
            }
            .padding(.leading, 50)
            .padding(.trailing, 50)
        }
    }
}


struct MusicCardViewRec: View {
    var musics : [MusicDetail]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 40) {
                ForEach(musics) { music in
                    VStack(alignment: .leading) {
                        Image(music.coverMusic)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        Text(music.judulMusic)
                            .font(.custom("Raleway", size: 32))
                            .fontWeight(.semibold)
                            .lineLimit(1)
                        Text(music.singerMusic)
                            .font(.custom("Raleway", size: 14))
                            .fontWeight(.regular)
                            .lineLimit(1)
                    }
                }
            }
            .padding(.leading, 50)
            .padding(.trailing, 50)
        }
    }
}

struct Music_Card: View {
    var body: some View {
        Text("Recent")
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
#Preview {
    Music_Card()
}
