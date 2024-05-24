//
//  Item.swift
//  Music Sense
//
//  Created by Gallen W T on 24/05/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
