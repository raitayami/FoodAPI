//
//  DataService.swift
//  FoodAPI
//
//  Created by Tayami Rai on 07/12/2023.
//

import Foundation

struct DataService {
    
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func getData() async {
        
        
        guard apiKey != nil else {
            return
        }
        
        if let url = URL(string: "https://api.spoonacular.com/recipes/complexSearch"){
            
            var request = URLRequest(url: url)
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.addValue("\(apiKey ?? "error")", forHTTPHeaderField: "x-api-key")
            
            do{
                let (data, response) = try await URLSession.shared.data(for: request)
                print(data)
                print(response)
            }
            catch{
                print(error)
            }
        }
        
    }
    
}
