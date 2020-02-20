//
//  CreateHabitView.swift
//  HabitTracker
//
//  Created by Bogdan on 2/18/20.
//  Copyright © 2020 Codeswiftr. All rights reserved.
//

import SwiftUI

struct CreateHabitView: View {
    @State var habitName : String = ""
    @State var placeHolder : String = "Enter habit name"
    @State var showField: Bool = true
    var body: some View {
        VStack{
            ZStack(alignment: .leading) {
                TextField(self.placeHolder, text: self.$habitName){
                    print(self.habitName)
                }                    .padding(.all, 10)
                            .frame(width: UIScreen.main.bounds.width - 50 , height: 50 )
                            .background(Color("darkGrey"))
                            .cornerRadius(30)
                            .foregroundColor(.white)
                            .shadow(color: Color("orange"), radius: 10, x: 0, y: 10)
                            .offset(x: self.showField ? 0  : (-UIScreen.main.bounds.width / 2  - 180))
                            .animation(.spring())
                        
                        
                
                            Image(systemName: "plus.circle")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.orange)
                            .offset(x: self.showField ? (UIScreen.main.bounds.width - 90) : -30)
                            .animation(.spring())
                            .onTapGesture {
                                self.showField.toggle()
                                // self.showView.toggle()
                        }
                
            }
            .padding(.bottom, 20)
            .padding(.leading, 2)
            //            TextField(self.$habitName,placeholder: Text( "What would you do?"), onEditingChanged: {
            //                (changed)  in
            //                    print(changed)
            //            })
            TemplateListView()
        }
    }
}

struct CreateHabitView_Previews: PreviewProvider {
    static var previews: some View {
        CreateHabitView()
    }
}
