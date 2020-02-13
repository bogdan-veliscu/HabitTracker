//
//  SetingCellView.swift
//  HabitTracker
//
//  Created by Bogdan on 2/3/20.
//  Copyright © 2020 Codeswiftr. All rights reserved.
//

import SwiftUI

struct SetingCellView: View {
    var setting: SettingItem
    var body: some View {
            HStack{
                VStack{
                    Image(systemName: setting.imageName).resizable().scaledToFit().accentColor(.green).frame(width: 30, height: 30, alignment: .center).padding()
                }.foregroundColor(setting.color).clipShape(RoundedRectangle(cornerRadius: 15))
                Text(setting.name).font(.headline)
                
            }.background(Color.clear)
                .clipShape(RoundedRectangle(cornerRadius: 15))
        }
}

struct SetingCellView_Previews: PreviewProvider {
    static var previews: some View {
        SetingCellView(setting: SettingItem(imageName: "book", name: "TEst", color: .red))
    }
}
