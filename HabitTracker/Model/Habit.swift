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
        self.comment = ""
        self.color = ""
    }
    
    init(icon: String, title: String, timestamp: Double) {
        self.icon = icon
        self.title = title
        self.timestamp = timestamp
        self.desc = title
        
        self.comment = ""
        self.color = ""
    }
    
    init?(json: [String: Any]) {
        guard let title = json["title"] as? String,
            let icon = json["icon"] as? String,
            let desc = json["desc"] as? String,
            let color = json["color"] as? String,
            let tagsJson = json["tags"] as? [String: Any]
            else {
                return nil
        }
        
        var tags = [String]()
        for tag in tagsJson.keys {
            tags.append(tag)
        }
        
        self.title = title
        self.desc = desc
        self.icon = icon
        self.color = color
        self.tags = tags
    }
    var icon: String?
    var title: String?
    var timestamp: Double = 0.0
    var desc: String?
    var comment: String?
    var tags: [String]? = [String]()
    var color: String? = ""
    
}
