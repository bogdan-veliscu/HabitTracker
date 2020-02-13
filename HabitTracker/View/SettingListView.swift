//
//  SettingsListView.swift
//  HabitTracker
//
//  Created by Bogdan on 2/3/20.
//  Copyright © 2020 Codeswiftr. All rights reserved.
//

import SwiftUI

struct SettingListView: View {
    
    var body: some View {
        List(settings, id: \.self){
            setting in
            NavigationLink( destination: Text( setting.name)){
                SetingCellView (setting: setting)
            }.navigationBarTitle("Settings")
        }
    }
}

struct SettingListView_Previews: PreviewProvider {
    static var previews: some View {
        SettingListView()
    }
}
