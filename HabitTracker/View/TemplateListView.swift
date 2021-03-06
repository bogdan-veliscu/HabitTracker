//
//  TemplateListView.swift
//  HabitTracker
//
//  Created by Bogdan on 2/19/20.
//  Copyright © 2020 Codeswiftr. All rights reserved.
//

import SwiftUI

struct TemplateListView: View {
    @ObservedObject var habitsVO = HabitsViewModel()
    
    var body: some View {
        //Text("Habit List")
        List(habitsVO.templates, id: \.self){
            habit in
            HabitCellView (habit: habit)
            
        }
    }
}

struct TemplateListView_Previews: PreviewProvider {
    static var previews: some View {
        TemplateListView()
    }
}
