//
//  ViewController.swift
//  Dollary
//
//  Created by Lucas Alejandro Kempe on 17/10/2021.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var employeeTableView: UITableView!
    
    private var curreyncyViewModel : CurrencyViewModel!
    
//    private var dataSource : EmployeeTableViewDataSource<EmployeeTableViewCell,EmployeeData>!
//    

    override func viewDidLoad() {
        super.viewDidLoad()
        callToViewModelForUIUpdate()
    }
    
    func callToViewModelForUIUpdate(){
        
        self.curreyncyViewModel =  CurrencyViewModel()
        self.curreyncyViewModel.bindCurrencyViewModelToController = {
            self.updateDataSource()
        }
    }
    
    func updateDataSource(){
        
//        self.dataSource = EmployeeTableViewDataSource(cellIdentifier: "EmployeeTableViewCell", items: self.employeeViewModel.empData.data, configureCell: { (cell, evm) in
//            cell.employeeIdLabel.text = evm.id
//            cell.employeeNameLabel.text = evm.employeeName
//        })
//
//        DispatchQueue.main.async {
//            self.employeeTableView.dataSource = self.dataSource
//            self.employeeTableView.reloadData()
//        }
    }
    
}
