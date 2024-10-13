//
//  SecondViewController.swift
//  Timer
//
//  Created by Karina Kinzhigaliyeva on 07.10.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    var firstDate = Date()
    
    var secondDate = Date()
    
    var savedDate = Date()
    
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM yyyy, E HH:mm"
        label1.text = dateFormatter.string(from: firstDate)
        label2.text = dateFormatter.string(from: secondDate)
        savedDate = firstDate
        label3.text = dateFormatter.string(from: firstDate)
        
    }
    
    
    @objc func countTime () {
        
        if savedDate >= secondDate {
            timer.invalidate()
            let alert = UIAlertController(title: "Timer", message: "Time's up", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alert, animated: true)
            return
        }
        
        savedDate = savedDate.addingTimeInterval(100*100)
        
        let newFormatter = DateFormatter()
        newFormatter.dateFormat = "dd MMMM yyyy, E HH:mm"
        label3.text = newFormatter.string(from: savedDate)
        
        
        
    }
    
    @IBAction func startTimer(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(countTime), userInfo: nil, repeats: true)
        
        
    }
    
    
    @IBAction func stopTimer(_ sender: Any) {
        timer.invalidate()
    }
    
    
    @IBAction func restartTimer(_ sender: Any) {
        timer.invalidate()
        savedDate = firstDate
        let newFormatter = DateFormatter()
        newFormatter.dateFormat = "dd MMMM yyyy, E HH:mm"
        label3.text = newFormatter.string(from: firstDate)
    }
    
    
}



