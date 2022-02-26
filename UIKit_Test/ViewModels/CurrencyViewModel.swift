//
//  CurrencyViewModel.swift
//  UIKit_Test
//
//  Created by Lucas Alejandro Kempe on 25/02/2022.
//

import Foundation

class CurrencyViewModel: NSObject {
    
    private var apiService : APIService!
    
    var ratesData : CurrencyRates! {
        didSet {
            self.bindCurrencyToController()
        }
    }
    
    var bindCurrencyToController : (() -> ()) = {}
    
    override init() {
        super.init()
        self.apiService = APIService()
        getCurrencyRatesData()
    }
    
    func getCurrencyRatesData() {
        self.apiService.getCurrencyRatesData { (ratesData) in
            self.ratesData = ratesData
        }
    }
}
