//
//  ViewController.swift
//  gradesProjectMickle
//
//  Created by PETER MICKLE on 9/18/24.
//

import UIKit

class ViewController: UIViewController {


    
    
    @IBOutlet weak var outputOutlet: UILabel!
    
    @IBOutlet weak var possibleOutlet: UITextField!
    
    @IBOutlet weak var earnedOutlet: UITextField!
    
    var posPoints : String = ""
    var earnPoints : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func error(){
        outputOutlet.text = "enter valid numbers!"
    }
    
    func calculateTuple(num1: Double, num2: Double) -> (precent: Int, grade: String){
        let score: Double = num1/num2
        var letterGrade: String
        if score >= 0.9{
            letterGrade = "A"
        }else if score >= 0.8{
            letterGrade = "B"
        }else if score >= 0.7{
            letterGrade = "C"
        }else if score >= 0.6{
            letterGrade = "D"
        }else {
            letterGrade = "F"
        }
 
        return (Int(score*100), letterGrade)
    
    }
    
    func calculate(num1: Double, num2: Double) -> String{
        let score: Double = num1/num2
        if score >= 0.9{
            return "A"
        }else if score >= 0.8{
            return "B"
        }else if score >= 0.7{
            return "C"
        }else if score >= 0.6{
            return "D"
        }else {
            return "F"
        }
 
    
    }
    
    func calculateFail(num1: Double, num2: Double) -> String{
        let score: Double = num1/num2
        if score >= 0.6{
            return "pass"
        }else{
            return "fail"
        }
 
    
    }

    @IBAction func calcAction(_ sender: UIButton) {
        posPoints = possibleOutlet.text ?? ""
        earnPoints = earnedOutlet.text ?? ""
        if let possiblePoints = Double(posPoints){
            if let earnedPoints = Double(earnPoints){
                if possiblePoints < 1 || earnedPoints < 0{
                    error()
                    return
                }
                outputOutlet.text = "Precentage : " + String(calculateTuple(num1: earnedPoints, num2: possiblePoints).0) + "\nGrade: " + calculateTuple(num1: earnedPoints, num2: possiblePoints).1
                print("E")
            }else{
                error()
            }
           
        }else{
            error()
        }
      
    }
    
}

