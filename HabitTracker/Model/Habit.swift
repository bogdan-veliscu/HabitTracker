//
//  Habit.swift
//  HabitTracker
//
//  Created by Bogdan on 2/1/20.
//  Copyright © 2020 Codeswiftr. All rights reserved.
//

import Foundation
import SwiftUI


struct Habit: Hashable, Decodable {
    
    init(){
        self.icon = ""
        self.title = ""
        self.timestamp = 0
        self.desc = ""
    }
    
    init(icon: String, title: String, timestamp: Double) {
        self.icon = icon
        self.title = title
        self.timestamp = timestamp
        self.desc = title
    }
//    var id = GUID()
    var icon: String
    var title: String
    var timestamp: Double
    var desc: String

}
