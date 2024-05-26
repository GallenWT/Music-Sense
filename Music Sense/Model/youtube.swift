//
//  youtube.swift
//  Music Sense
//
//  Created by Gallen W T on 26/05/24.
//

import SwiftUI
import WebKit

struct YouTubeView: UIViewRepresentable {
    let videoID: String

    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: "https://www.youtube.com/embed/\(videoID)") else {
            return
        }
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct youtube: View {
    var body: some View {
        
        YouTubeView(videoID: "AY48w6XOJZU")
            .frame(width:576, height: 324) // Atur tinggi sesuai kebutuhan
            .cornerRadius(10)
            .padding()
    }
}

#Preview {
    youtube()
}
