//
//  ChordLibraryView.swift
//  Music Sense
//
//  Created by Gallen W T on 25/05/24.
//

import SwiftUI

struct ChordLibraryView: View {
    var body: some View {
        ZStack {
//            Rectangle()
//                .foregroundColor(Color("backgroundColor"))
//                .ignoresSafeArea()
            Image("chordListBg")
                .resizable()
                .frame(width: 1194, height: 900)
            
            Text("Chord Library View")
                .foregroundColor(.white)
            
            
            VStack{
                HStack{
//                    Text("C", "C#", "D", "D#", "E", "F", "F#", "G", "A", "A#", "B")
                }
            }
            
        }
    }
}

#Preview {
    ChordLibraryView()
}
