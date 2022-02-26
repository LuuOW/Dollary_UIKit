//
//  ViewController.swift
//  UIKit_Test
//
//  Created by Lucas Alejandro Kempe on 25/02/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dollarPriceLabel: UILabel!
    @IBOutlet weak var euroPriceLabel: UILabel!
    @IBOutlet weak var pesosSwitch: UISwitch!
    @IBOutlet weak var euroSwitch: UISwitch!
    @IBOutlet weak var chooserBtn: UIButton!
    @IBOutlet weak var inputPriceField: UITextField!
    @IBOutlet weak var calculateBtn: UIButton!
    
    private var currencyViewModel : CurrencyViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiViewModelUpdate()
    }
    
    func uiViewModelUpdate() {
        self.currencyViewModel = CurrencyViewModel()
        self.currencyViewModel.bindCurrencyToController = {
            self.updateData()
        }
    }
    
    func updateData() {
        DispatchQueue.main.async {
            self.dollarPriceLabel.text = "\(self.currencyViewModel.ratesData.rates.dollarPrice)"
            self.euroPriceLabel.text = "\(self.currencyViewModel.ratesData.rates.euroPrice)"
        }
    }
}

