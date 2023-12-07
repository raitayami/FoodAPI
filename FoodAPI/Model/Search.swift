//
//  Search.swift
//  FoodAPI
//
//  Created by Tayami Rai on 07/12/2023.
//

import Foundation

struct Search: Decodable{
    var results: [Food]
    var offset: Int
    var number: Int
    var totalResults: Int
}

struct Food: Decodable{
    var id: Int
    var title: String
    var image: String
    var imageType: String
}
