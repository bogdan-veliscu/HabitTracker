//
//  SettingItem.swift
//  HabitTracker
//
//  Created by Bogdan on 2/3/20.
//  Copyright © 2020 Codeswiftr. All rights reserved.
//

import Foundation

import Foundation
import SwiftUI


struct SettingItem: Hashable {
    var imageName: String
    var name: String
    var color: Color
    
}

let settings = [
    SettingItem(imageName: "rosette", name: "Try Premium", color: Color("Orange")),
    SettingItem(imageName: "globe", name: "Language", color: .green),
    SettingItem(imageName: "ellipses.bubble", name: "Notifications", color: Color.pink),
    SettingItem(imageName: "cloud.fill", name: "Cloud Sync", color: .blue),
    SettingItem(imageName: "star.fill", name: "Rate App", color: .yellow),
    SettingItem(imageName: "square.and.arrow.up", name: "Share", color: .blue),
    SettingItem(imageName: "envelope", name: "Send Feedback", color: .purple)
]
