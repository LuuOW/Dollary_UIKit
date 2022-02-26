//
//  CurrencyModel.swift
//  UIKit_Test
//
//  Created by Lucas Alejandro Kempe on 25/02/2022.
//

import Foundation

struct CurrencyRates : Decodable {
    let rates: Rates
}

struct Rates : Decodable {
    let dollarPrice, euroPrice : Float
    
    enum CodingKeys: String, CodingKey {
        case dollarPrice = "ARS"
        case euroPrice = "EUR"
    }
}
