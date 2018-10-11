//
//  ViewController.swift
//  iOS test for balance forecasting
//
//  Created by viral patel on 11/10/2018.
//  Copyright © 2018 viral patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let model = MyModel()
        
        guard let result = try? model.prediction(day: 26, month: 8) else {
            fatalError("Prediction failed!")
        }
        
        print(result.balance)
        
        var counterDays : Double = 27
        var months : Double = 8
        
        for _ in 1...28{
            
            guard let result = try? model.prediction(day: counterDays , month : months) else {
                fatalError("Prediction failed!")
            }
            
            counterDays = counterDays + 1
            if counterDays == 31{
                counterDays = 1
    
                months = months + 1
                
                if months == 13{
                    months = 1
                }
            }
            print(result.balance)
        }
        
    }
    
    
}

