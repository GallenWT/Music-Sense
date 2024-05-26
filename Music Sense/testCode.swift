//
//  testCode.swift
//  Music Sense
//
//  Created by Gallen W T on 25/05/24.
//


import SwiftUI



struct LearnMusicDetailView1: View {
    @State private var Chord1: String = "Simplified"
    @State private var Chord2: String = "Original"
    @State private var textC: String = "chordSimplifiedPerfect"
    @State private var isTextAPressed: Bool = true
    @State private var isTextBPressed: Bool = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("backgroundColor"))
                .ignoresSafeArea()
            HStack(alignment: .top){
                
                VStack(alignment: .leading) {
                    Text("Singer")
                        .foregroundColor(.white)
                        .font(.custom("RaleWay", size: 18))
                        .fontWeight(.regular)
                    YouTubeView(videoID: "_V-ZYslamN8")
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
                                .onTapGesture {
                                    isTextAPressed.toggle()
                                    if isTextAPressed {
                                        isTextBPressed = false
                                        textC = "chordSimplifiedPerfect"
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
                                        textC = "chordOriginalPerfect"
                                    } else {
                                        textC = ""
                                    }
                                }
                        }
                        Image(textC)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 60)
                    }
                    .frame(width: 576, height: 157)
                    .background(Color.white.opacity(0.1))
                    
                }
                ScrollView(.vertical, showsIndicators: false){
                    Image("lyricPerfect")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 333)
                    
                }
                .padding(.leading, 120)
                .padding(.top, 160)
                
            }
            
        }
    }
}

#Preview {
    LearnMusicDetailView1()
}
