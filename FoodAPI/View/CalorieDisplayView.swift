//
//  CalorieDisplayView.swift
//  FoodAPI
//
//  Created by Tayami Rai on 19/12/2023.
//

import SwiftUI

struct CalorieDisplayView: View {
    
    @State var detailList = [CalorieResponse]()
    var service = DataService()

    var body: some View {
        
        VStack{
            List(detailList){ a in
                
                Text(a.title ?? "nil")
                
                
            }
            .task {
                detailList = await service.getCalorieData()
            }
        }
    }
}

#Preview {
    CalorieDisplayView()
}
