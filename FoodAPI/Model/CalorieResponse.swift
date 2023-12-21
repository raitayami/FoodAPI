//
//  CalorieResponse.swift
//  FoodAPI
//
//  Created by Tayami Rai on 19/12/2023.
//

import Foundation

struct CalorieResponse: Decodable, Identifiable{
    var id: Int?
    var title: String?
    var image: String?
    var imageType: String?
    var calories: Int?
    var protein: String?
    var fat: String?
    var carbs: String?
}

