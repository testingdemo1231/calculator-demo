//  ViewController.swift
//  finalGradeCalculator
//  Created by Sal Abuali on 7/9/20.
//  Copyright © 2020 Sal Abuali. All rights reserved.
//========================================================
import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var currentGradeText: UILabel!
    @IBOutlet weak var examWeightText: UILabel!
    @IBOutlet weak var desiredGradeText: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    var gradeNeeded:Double?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let myArray = [2,3,4]
    }

    
    @IBAction func calculateButton(_ sender: UIButton)
    {
        
        view.endEditing(true);
        let desiredGrade = Double(desiredGradeText.text!)!
        let currentGrade = Double(currentGradeText.text!)!
        let examWeight = Double(examWeightText.text!)!
        
        let gradeNeeded = (100 * desiredGrade - (100 - examWeight) * currentGrade)/examWeight
        
        print(gradeNeeded)
        resultLabel.text = String(format:"%.1f", gradeNeeded) + "%"
        
    }
    
}










