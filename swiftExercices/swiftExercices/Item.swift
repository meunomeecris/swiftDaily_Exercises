//
//  Item.swift
//  swiftExercices
//
//  Created by Cris Messias on 12/10/23.
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
