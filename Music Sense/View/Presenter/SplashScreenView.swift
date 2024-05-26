//
//  SplashScreenView.swift
//  Music Sense
//
//  Created by Gallen W T on 24/05/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(Color("splashColor"))
//               .frame(width: .infinity, height: .infinity)
                .edgesIgnoringSafeArea(.all)
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.isActive = true
            }
        }
        .fullScreenCover(isPresented: $isActive, content: {
            HomeScreenView()
        })
        .navigationBarHidden(true)
        .preferredColorScheme(.light)

    }
}

#Preview {
    SplashScreenView()
}
