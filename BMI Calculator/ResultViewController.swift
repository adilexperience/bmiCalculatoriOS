//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Muhammad Adil Mehmood on 06/03/2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmi : BMI?
    
    
    @IBOutlet weak var bmiResult: UILabel!

    @IBOutlet weak var advise: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiResult.text = bmi?.getFormattedBMIValue()
        advise.text = bmi?.advice
        view.backgroundColor = bmi?.color
    }
    
    
    @IBAction func onRecalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
