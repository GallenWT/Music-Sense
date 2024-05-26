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
            Rectangle()
                .foregroundColor(Color("backgroundColor"))
                .ignoresSafeArea()
            Text("CHord Library View")
                .foregroundColor(.white)
            
        }
    }
}

#Preview {
    ChordLibraryView()
}
