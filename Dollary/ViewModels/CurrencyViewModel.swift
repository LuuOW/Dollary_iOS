//
//  CurrencyViewModel.swift
//  Dollary
//
//  Created by Lucas Alejandro Kempe on 16/10/2021.
//

import Foundation

class CurrencyViewModel : NSObject {
    
    private var apiService : APIService!
    private(set) var currencyData : Currency! {
        didSet {
            self.bindCurrencyViewModelToController()
        }
    }
    
    var bindCurrencyViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
        self.apiService =  APIService()
        callFuncToGetCurrencyData()
    }
    
    func callFuncToGetCurrencyData() {
        self.apiService.apiToGetCurrencyData { (currencyData) in
            self.currencyData = currencyData
        }
    }
}
