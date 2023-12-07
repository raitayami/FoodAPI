//
//  Food.swift
//  FoodAPI
//
//  Created by Tayami Rai on 07/12/2023.
//

import Foundation

struct Food: Decodable, Identifiable{
    var id: Int?
    var title: String?
    var image: String?
    var imageType: String?
}
