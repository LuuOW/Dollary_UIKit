//
//  APIService.swift
//  UIKit_Test
//
//  Created by Lucas Alejandro Kempe on 25/02/2022.
//

import Foundation

class APIService : NSObject {
    
    private let sourceURL = URL(string: "https://open.er-api.com/v6/latest/USD")!
    
    func getCurrencyRatesData(completion : @escaping (CurrencyRates) -> ()) {
        
        URLSession.shared.dataTask(with: sourceURL) { (data, urlResponse, error) in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                let currencyData = try! jsonDecoder.decode(CurrencyRates.self, from: data)
                completion(currencyData)
            }
        }.resume()
}
}
