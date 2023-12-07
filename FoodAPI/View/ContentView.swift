//
//  ContentView.swift
//  FoodAPI
//
//  Created by Tayami Rai on 07/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var food = [Food]()
    var service = DataService()
    
    var body: some View {
        VStack {
            List(food){ a in
                Text(a.title ?? "nil")
                    .foregroundStyle(.black)
                AsyncImage(url: URL(string: a.image ?? "error"))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    
            }
        }
        .task{
            food = await service.getData()
        }
    }
}

#Preview {
    ContentView()
}
