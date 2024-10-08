//
//  ClassmateViewController.swift
//  ClassmateAppMeyer
//
//  Created by EVAN MEYER on 10/2/24.
//

import UIKit

class ClassmateViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        AppData.num = 0
        AppData.score = 0
        AppData.outOf = 0
        questionLabel.text = "What is the nickname of \(AppData.classroom[AppData.num].name)"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func goAction(_ sender: UIButton) {
        AppData.outOf += 1
        if(answerTF.text == AppData.classroom[AppData.num].nickname){
            resultLabel.text = "Your correct!\nScore: \(AppData.score)/\(AppData.outOf)"
            newQuestion()
        }
        else{
            resultLabel.text = "Your wrong :(\nScore: \(AppData.score)/\(AppData.outOf)"
            newQuestion()
        }
    }
    
    func newQuestion() {
        AppData.num += 1
        questionLabel.text = "What is the nickname of \(AppData.classroom[AppData.num].name)"
    }
   
}
