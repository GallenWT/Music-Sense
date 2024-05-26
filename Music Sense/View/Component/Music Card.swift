//
//  Music Card.swift
//  Music Sense
//
//  Created by Gallen W T on 24/05/24.
//

import SwiftUI



struct MusicCardViewBox: View {
    var musics: [MusicDetail]
    @Binding var selectedMusic: MusicDetail?
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 40) {
                ForEach(musics) { music in
                    NavigationLink(
                        destination: LearnMusicDetailView(music: music),
                        isActive: Binding<Bool>(
                            get: { selectedMusic == music },
                            set: { _ in }
                        )
                    ) {
                        musicCardTemplateBox(music: music, isSelected: selectedMusic == music)
                    }
//                    musicCardTemplateBox(music: music, isSelected: selectedMusic == music)
//                        .onTapGesture {
//                            selectedMusic = music
//                        }
                }
            }
            .padding(.leading, 50)
            .padding(.trailing, 50)
            .padding(.bottom, 40)
        }
    }
}


struct MusicCardViewRec: View {
    var musics: [MusicDetail]
    @Binding var selectedMusic: MusicDetail?
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 40) {
                ForEach(musics) { music in
                    NavigationLink(
                        destination: LearnMusicDetailView(music: music),
                        isActive: Binding<Bool>(
                            get: { selectedMusic == music },
                            set: { _ in }
                        )
                    ) {
                        musicCardTemplateRec(music: music, isSelected: selectedMusic == music)
                    }
//                    musicCardTemplateRec(music: music, isSelected: selectedMusic == music)
//                        .onTapGesture {
//                            selectedMusic = music
//                        }
                }
            }
            .padding(.leading, 50)
            .padding(.trailing, 50)
            .padding(.bottom, 40)
        }
    }
}

struct musicCardTemplateBox: View {
    let music: MusicDetail
    let isSelected: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(music.coverMusic)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text(music.judulMusic)
                .font(.custom("Raleway", size: 30))
                .fontWeight(.semibold)
                .lineLimit(1)
                .foregroundColor(.white)
            Text(music.singerMusic)
                .font(.custom("Raleway", size: 14))
                .fontWeight(.regular)
                .lineLimit(1)
                .foregroundColor(.white)
        }
    }
}


struct musicCardTemplateRec: View {
    let music: MusicDetail
    let isSelected: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(music.coverMusic)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text(music.judulMusic)
                .font(.custom("Raleway", size: 30))
                .fontWeight(.semibold)
                .lineLimit(1)
                .foregroundColor(.white)
            Text(music.singerMusic)
                .font(.custom("Raleway", size: 14))
                .fontWeight(.regular)
                .lineLimit(1)
                .foregroundColor(.white)
        }
    }
}


struct Music_Card: View {
    @State private var selectedMusic: MusicDetail?
    
    var body: some View {
        Text("Recent")
        ScrollView(.vertical, showsIndicators: false){
            MusicCardViewBox(musics: recentMusic, selectedMusic: $selectedMusic)
                .padding(.top, 40)
                .padding(.bottom, 40)
            MusicCardViewBox(musics: recommendedMusic, selectedMusic:$selectedMusic)
                .padding(.top, 40)
                .padding(.bottom, 40)
            MusicCardViewRec(musics: trendingMusic, selectedMusic: $selectedMusic)
                .padding(.top, 40)
                .padding(.bottom, 40)
            MusicCardViewBox(musics: newMusic, selectedMusic: $selectedMusic)
                .padding(.top, 40)
                .padding(.bottom, 40)
        }
    }
}


#Preview {
    Music_Card()
}
