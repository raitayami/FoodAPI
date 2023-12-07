//
//  ContentView.swift
//  FoodAPI
//
//  Created by Tayami Rai on 07/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    var service = DataService()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            Task{
                await service.getData()
            }
        }
    }
}

#Preview {
    ContentView()
}
