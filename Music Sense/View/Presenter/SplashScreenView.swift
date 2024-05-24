//
//  SplashScreenView.swift
//  Music Sense
//
//  Created by Gallen W T on 24/05/24.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("splashColor"))
//                .frame(width: .infinity, height: .infinity)
                .edgesIgnoringSafeArea(.all)
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250)
        }

    }
}

#Preview {
    SplashScreenView()
}
