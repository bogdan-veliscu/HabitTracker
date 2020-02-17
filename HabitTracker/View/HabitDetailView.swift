//
//  HabitView.swift
//  HabitTracker
//
//  Created by Bogdan on 2/1/20.
//  Copyright © 2020 Codeswiftr. All rights reserved.
//

import SwiftUI

struct HabitDetailView: View {
    var habit: Habit
    var body: some View {
        VStack{
            Image(systemName: habit.icon!).resizable().padding().scaledToFit()
            Text(habit.title!).font(.headline).foregroundColor(.white).padding()
            
        }.frame(width: 200, height: 200, alignment: .center).background(Color.pink).clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct HabitView_Previews: PreviewProvider {
    static var previews: some View {
        HabitDetailView(habit: Habit(icon: "eye.slash", title: "Test habit", timestamp: 0))
    }
}
