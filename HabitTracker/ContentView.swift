//
//  ContentView.swift
//  HabitTracker
//
//  Created by Bogdan on 2/1/20.
//  Copyright © 2020 Codeswiftr. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var authVM:AuthViewModel
    init() {
        self.authVM = AuthViewModel()
    }
    @State var selectedView = 0
    var body: some View {
        
        ZStack{
            TabView (selection: $selectedView){
                NavigationView{
                    HabitListView()
                    
                }
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Today")
                }.tag(0)
                StatisticsView()
                    .tabItem {
                        Image(systemName: "chart.bar")
                        Text("Stats")
                }.tag(1)
                
                CreateHabitView()
                    .tabItem {
                        Spacer()
                }.tag(2)
                
                
                Text("Plan")
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("Plan")
                }.tag(3)
                NavigationView{
                    SettingListView()
                    
                }
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }.tag(4)
            }.animation(.spring())
            VStack{
                Spacer()
                
                Image(systemName: "plus.circle.fill").resizable().frame(width: 70, height: 70, alignment: .center).padding()
                    .foregroundColor(Color("Red"))
                    .onTapGesture {
                        self.selectedView = 2
                }
            }.animation(.spring())
        }
            
            
        .accentColor(Color("Red"))
        .onAppear {
            self.authVM.viewWillAppear()
        }
        .onDisappear {
            self.authVM.viewWillDisappear()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}
