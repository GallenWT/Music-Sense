//
//  Search Bar.swift
//  Music Sense
//
//  Created by Gallen W T on 26/05/24.
//

//import SwiftUI
//
//struct Search_Bar: View {
//    @Binding var text: String
//    @State private var searchText = ""
//
//    var body: some View {
//        HStack {
//            Image(systemName: "magnifyingglass")
//                .foregroundColor(.gray)
//            TextField("Search", text: $text)
//                .foregroundColor(.primary)
//                .padding(7)
//                .padding(.horizontal, 25)
//                .background(Color(.systemGray6))
//                .cornerRadius(8)
//                .overlay(
//                    HStack {
//                        Spacer()
//                        if !text.isEmpty {
//                            Button(action: {
//                                self.text = ""
//                            }) {
//                                Image(systemName: "xmark.circle.fill")
//                                    .foregroundColor(.gray)
//                                    .padding(.trailing, 8)
//                            }
//                        }
//                    }
//                )
//            }
//            .padding(.horizontal, 10)
//    }
//}
//
//
//#Preview {
//    Search_Bar(text: $searchText)
//}


import SwiftUI

struct Search_Bar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            TextField("Search", text: $text)
                .foregroundColor(.primary)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Spacer()
                        if !text.isEmpty {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                                    .onTapGesture {
                                        self.text = ""
                                    }
                            }
                        }
                    }
                )
        }
        .padding(.horizontal, 10)
    }
}

struct Search_Bar_Previews: PreviewProvider {
    @State static var searchText = ""
    
    static var previews: some View {
        Search_Bar(text: $searchText)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
