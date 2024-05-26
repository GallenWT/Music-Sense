//
//  Music.swift
//  Music Sense
//
//  Created by Gallen W T on 24/05/24.
//

import Foundation

struct MusicDetail: Identifiable, Equatable , Hashable{
    var id = UUID()
    var judulMusic: String
    var coverMusic: String
    var singerMusic: String
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }
    
    static func == (lhs: MusicDetail, rhs: MusicDetail) -> Bool {
           return lhs.id == rhs.id // bandingkan berdasarkan id
       }
}
