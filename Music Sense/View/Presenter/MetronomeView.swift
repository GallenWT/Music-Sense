//
//  MetronomeView.swift
//  Music Sense
//
//  Created by Gallen W T on 25/05/24.
//

import SwiftUI

struct MetronomeView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("backgroundColor"))
                .ignoresSafeArea()
            Text("Metronome page")
                .foregroundColor(.white)
            
        }
    }
}

#Preview {
    MetronomeView()
}
