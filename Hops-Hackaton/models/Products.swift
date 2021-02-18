//
//  Products.swift
//  Hops-Hackaton
//
//  Created by Kary Martinez on 2/17/21.
//  Copyright © 2021 Kary Martinez. All rights reserved.
//

import Foundation

// MARK: - Welcome
struct ProductWrapper: Codable {
    let dietLabels, healthLabels, cautions: [String]
   // let totalNutrients, totalDaily: [String: TotalDaily]
    let ingredients: [Ingredient]
 //   let totalNutrientsKCal: TotalNutrientsKCal
}

// MARK: - Ingredient
struct Ingredient: Codable {
    let text: String
    let parsed: [Parsed]
}

// MARK: - Parsed
struct Parsed: Codable {
    let quantity: Int
    let measure, foodMatch, food, foodID: String
    let weight, retainedWeight: Int
    let nutrients: [String: TotalDaily]
    let measureURI: String
    let status: String

    enum CodingKeys: String, CodingKey {
        case quantity, measure, foodMatch, food
        case foodID = "foodId"
        case weight, retainedWeight, nutrients, measureURI, status
    }
}

// MARK: - TotalDaily
struct TotalDaily: Codable {
    let label: String
    let quantity: Double
}



// MARK: - TotalNutrientsKCal
//struct TotalNutrientsKCal: Codable {
//    let enercKcal, procntKcal, fatKcal, chocdfKcal: TotalDaily
//
//    enum CodingKeys: String, CodingKey {
//        case enercKcal = "ENERC_KCAL"
//        case procntKcal = "PROCNT_KCAL"
//        case fatKcal = "FAT_KCAL"
//        case chocdfKcal = "CHOCDF_KCAL"
//    }
//}
