//
//  HabitCellView.swift
//  HabitTracker
//
//  Created by Bogdan on 2/1/20.
//  Copyright © 2020 Codeswiftr. All rights reserved.
//

import SwiftUI

struct HabitCellView: View {
    var habit: Habit
    var body: some View {
        HStack{
            //            Image(systemName: habit.imageName)
            VStack{
                Image(systemName: habit.icon!).resizable().padding().scaledToFit().accentColor(.green)
            }.frame(width: 70, height: 70, alignment: .leading).background(Color.pink).clipShape(RoundedRectangle(cornerRadius: 15))
            Spacer()
            Text(habit.title!).font(.headline)
            
        }.background(Color.clear)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct HabitCellView_Previews: PreviewProvider {
    static var previews: some View {
        HabitCellView(habit: Habit(icon: "eye.slash", title: "Test habit", timestamp: 0))
    }
}
