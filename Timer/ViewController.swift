//
//  ViewController.swift
//  Timer
//
//  Created by Karina Kinzhigaliyeva on 07.10.2024.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var firstDatePicker: UIDatePicker!
    
    
    @IBOutlet weak var secondDatePicker: UIDatePicker!
    
    
    
    
    override func viewDidLoad() {
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondVC" {
            if let vc = segue.destination as? SecondViewController {
                
                vc.firstDate = firstDatePicker.date
                vc.secondDate = secondDatePicker.date
                
                
            }
        }
        
    }
    
    
    
}

