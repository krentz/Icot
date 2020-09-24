//
//  ChartTableViewCell.swift
//  BetinBank
//
//  Created by Rafael Krentz Gonçalves on 4/15/20.
//  Copyright © 2020 krentz. All rights reserved.
//

import UIKit
import Charts

class ChartTableViewCell: BaseTableViewCell {
    
    @IBOutlet weak var pieChartView: PieChartView!
  //  var viewModel = BankStatusViewModel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        baseInit()
    }
    
    func baseInit(){
    //    viewModel.updateStates()
        
        var entries = [PieChartDataEntry]()
            
      //  for i in 0..<viewModel.entryStates.count {
          //  let entry = PieChartDataEntry(value: Double(2), label: "oi")
        entries = [PieChartDataEntry(value: 1, label: ""),
                   PieChartDataEntry(value: 1, label: ""),
                   PieChartDataEntry(value: 1, label: ""),
                   PieChartDataEntry(value: 0, label: "")]
        //}
        
        let pieChartDataSet = PieChartDataSet(entries: entries, label: "")
        pieChartDataSet.colors = [.white,.darkGray]
            
        pieChartView.transparentCircleColor = .clear
        pieChartView.holeColor = nil
        pieChartView.isUserInteractionEnabled = false
        
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        pieChartView.data = pieChartData
       // pieChartView.legend.textColor = BetinUtils.shared.setLabelColor()

       // pieChartView.chartDescription?.text = .charDescription
       // pieChartView.chartDescription?.textColor = BetinUtils.shared.setLabelColor()
            
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        pieChartData.setValueFormatter(DefaultValueFormatter(formatter:formatter))
        
//        if SessionHandler.shared.isSuported() {
//            SessionHandler.shared.updateAppleWatch()
//        }
    }
    
}


//----------------------------- ENTRY POPUP DELEGATE ------------------------------------------

//extension ChartTableViewCell: BettingEntryPopupViewDelegate {
//    func okButtonTapped(investValueTextField: Double, oddValueTextField: Double, selectedOption: Int) {
//        CoreDataManagement.shared.addCoreData(investValueTextField: investValueTextField, oddValueTextField: oddValueTextField, selectedOption: selectedOption)
//        baseInit()
//   }
//}
