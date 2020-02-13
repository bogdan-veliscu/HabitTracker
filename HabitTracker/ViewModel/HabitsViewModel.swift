//
//  HabitViewModel.swift
//  HabitTracker
//
//  Created by Bogdan on 2/2/20.
//  Copyright © 2020 Codeswiftr. All rights reserved.
//

import Foundation
import Combine
import Firebase
import FirebaseDatabase

class HabitsViewModel: ObservableObject{
    @Published var habitList: [Habit] = []
    @Published var templates: [Habit] = []
    var ref: DatabaseReference!
    init() {
        ref = Database.database().reference()
        loadTemplates()
    }
    
    func loadTemplates() ->Void {
        let habits = ref.child("templates")
        habits.observe(DataEventType.value, with: { (snapshot) in
            let habitDict = snapshot.value as? [String : AnyObject] ?? [:]
            for habitKey in habitDict {
                let habitRaw = habitKey.value
                let habit = try? JSONDecoder().decode(Habit.self, from:habitRaw as! Data)
                print(habit)
                templates.append(habit)
            }
            print(habitDict)
        })
    }
    
    func loadHabits() -> Void {
        
    }
    
    func createHabit(habit: Habit) -> Void {
        
    }
    
    func deleteHabit(habit: Habit) -> Void {
        
    }
    
    func updateHabit(habit: Habit) -> Void {
        
    }
}
