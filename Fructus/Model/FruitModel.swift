//
//  FruitModel.swift
//  Fructus
//
//  Created by Jasmine Lai Hweeying on 13/05/2023.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

