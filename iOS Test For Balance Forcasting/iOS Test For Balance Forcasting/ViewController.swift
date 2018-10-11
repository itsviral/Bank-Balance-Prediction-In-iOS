//
//  ViewController.swift
//  iOS Test For Balance Forcasting
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
        
        var counter : Double = 27
        var months : Double = 8
        for _ in 1...21{
            
            guard let result = try? model.prediction(day: counter , month : months) else {
                fatalError("Prediction failed!")
            }
            
            counter = counter + 1
            if counter == 31{
                counter = 1
                months = months + 1
                
            }
            print(result.balance)
        }
        
    }
    
    
}

