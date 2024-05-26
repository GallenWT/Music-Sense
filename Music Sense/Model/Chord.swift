//
//  Chord.swift
//  Music Sense
//
//  Created by Gallen W T on 26/05/24.
//

import Foundation

struct Chord: Identifiable, Equatable, Hashable {
    let id = UUID()
    let namaChord: String
    let gambarChord: String
    
    static func ==(lhs: Chord, rhs: Chord) -> Bool {
            return lhs.id == rhs.id
        }
}
