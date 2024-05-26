//
//  LearnMusicDetailView.swift
//  Music Sense
//
//  Created by Gallen W T on 26/05/24.
//

import SwiftUI

struct LearnMusicDetailView: View {
    let music: MusicDetail
    @State private var Chord1: String = "Simplified"
    @State private var Chord2: String = "Original"
    @State private var textC: String = "chordSimplifiedPerfect"
    @State private var isTextAPressed: Bool = true
    @State private var isTextBPressed: Bool = false
    
    var body: some View {
        
        ZStack {
//            if isTextAPressed{
//                textC = "\(music.chordSimMusic)"
//            }
            Rectangle()
                .foregroundColor(Color("backgroundColor"))
                .ignoresSafeArea()
            HStack(alignment: .top){
                
                VStack(alignment: .leading) {
//                    Text("\(music.singerMusic)")
//                        .foregroundColor(.white)
//                        .font(.custom("RaleWay", size: 18))
//                        .fontWeight(.regular)
                    YouTubeView(videoID: "\(music.youtubeMusic)")
                        .frame(width: 576, height: 324)
                        .cornerRadius(10)
                        .padding(.top, 40)
                        .padding(.bottom, 40)
                    VStack(alignment: .leading){
                        HStack{
                            Text(Chord1)
                                .foregroundColor(isTextAPressed ? Color("selectedFontColor") : .white)
                                .font(.custom("Raleway", size: 16))
                                .padding(20)
                                .background(isTextAPressed ? Color.white.opacity(0.2) : Color.clear)
                                .cornerRadius(18)
//                                .frame(width: 90, height: 35)
                                .onTapGesture {
                                    isTextAPressed.toggle()
                                    if isTextAPressed {
                                        isTextBPressed = false
                                        textC = "\(music.chordSimMusic)"
                                    } else {
                                        textC = ""
                                    }
                                }
                            
                            Rectangle()
                                .frame(width: 1, height: 30)
                                .foregroundColor(Color("lineColor"))
                                .padding(20)
                            
                            Text(Chord2)
                                .foregroundColor(isTextBPressed ? Color("selectedFontColor") : .white)
                                .font(.custom("Raleway", size: 16))
                                .padding(20)
                                .background(isTextBPressed ? Color.white.opacity(0.2) : Color.clear)
                                .cornerRadius(18)
                                .onTapGesture {
                                    isTextBPressed.toggle()
                                    if isTextBPressed {
                                        isTextAPressed = false
                                        textC = "\(music.chordOriMusic)"
                                    } else {
                                        textC = ""
                                    }
                                }
                        }
                        .frame(width: 480)
                        Image(textC)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 60)
                            .padding(.bottom, 20)
                    }
                    .frame(width: 576, height: 170)
                    .background(Color.white.opacity(0.1))
                    
                }
                ScrollView(.vertical, showsIndicators: false){
                    Image("\(music.lyricMusic)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 333)
                    
                }
                .padding(.leading, 120)
                .padding(.top, 40)
                
            }
            .navigationTitle("\(music.judulMusic) by \(music.singerMusic)")
        }
    }
}
//
//#Preview {
//    LearnMusicDetailView()
//}
