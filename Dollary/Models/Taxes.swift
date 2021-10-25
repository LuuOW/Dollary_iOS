//
//  Taxes.swift
//  Dollary
//
//  Created by Lucas Alejandro Kempe on 23/10/2021.
//

import Foundation

struct Taxes {
    
    let imp21 = 0.21
    let imp30 = 0.3
    let imp35 = 0.35
    let imp50 = 0.5
    
    let impuestoTotalDigital = imp21 + imp30 + imp35
    
    let impuestoTotalFisico = imp30 + imp35
    
    let impuestoTotalFisico50 = imp30 + imp35 + imp50
    
    let impuestoTotalDivisa = imp30 + imp35
    
    
}
