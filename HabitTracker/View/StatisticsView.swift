//
//  StatisticsView.swift
//  HabitTracker
//
//  Created by Bogdan on 2/6/20.
//  Copyright © 2020 Codeswiftr. All rights reserved.
//

import SwiftUI
import SwiftUICharts

struct StatisticsView: View {
    var body: some View {
        LineView(data: [8,23,54,32,12,37,7,23,43], title: "Line chart", legend: "Full screen") // legend is optional, use optional .padding()
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
