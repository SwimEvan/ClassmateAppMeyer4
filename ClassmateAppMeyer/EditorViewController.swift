//
//  EditorViewController.swift
//  ClassmateAppMeyer
//
//  Created by EVAN MEYER on 10/3/24.
//

import UIKit

class EditorViewController: UIViewController {

    @IBOutlet weak var studentLabel: UILabel!
    
    @IBOutlet weak var switchOutlet: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func prevAction(_ sender: UIButton) {
        if(AppData.num == 0){
            AppData.num = AppData.names.count-1
        }
        else{
            AppData.num -= 1
        }
            if(switchOutlet.selectedSegmentIndex == 0){
                AppData.names.sort()
                AppData.num = 0
                studentLabel.text = "Name: \(AppData.names[AppData.num])\nAttendence: \(AppData.attendence[AppData.num])\nNickname: \(AppData.nickname[AppData.num])"
                
            }
            if(switchOutlet.selectedSegmentIndex == 1){
                AppData.attendence.sort()
                AppData.num = 0
                studentLabel.text = "Name: \(AppData.names[AppData.num])\nAttendence: \(AppData.attendence[AppData.num])\nNickname: \(AppData.nickname[AppData.num])"
                
            }
            if(switchOutlet.selectedSegmentIndex == 2){
                AppData.nickname.sort()
                AppData.num = 0
                studentLabel.text = "Name: \(AppData.names[AppData.num])\nAttendence: \(AppData.attendence[AppData.num])\nNickname: \(AppData.nickname[AppData.num])"
            }
        
    }
    
    @IBAction func nextAction(_ sender: UIButton) {
        if(AppData.num == AppData.names.count-1){
            AppData.num = 0
        }
        else{
            AppData.num += 1
        }
            if(switchOutlet.selectedSegmentIndex == 0){
                AppData.names.sort()
                AppData.num = 0
                studentLabel.text = "Name: \(AppData.names[AppData.num])\nAttendence: \(AppData.attendence[AppData.num])\nNickname: \(AppData.nickname[AppData.num])"
                
            }
            if(switchOutlet.selectedSegmentIndex == 1){
                AppData.attendence.sort()
                AppData.num = 0
                studentLabel.text = "Name: \(AppData.names[AppData.num])\nAttendence: \(AppData.attendence[AppData.num])\nNickname: \(AppData.nickname[AppData.num])"
                
            }
            if(switchOutlet.selectedSegmentIndex == 2){
                AppData.nickname.sort()
                AppData.num = 0
                studentLabel.text = "Name: \(AppData.names[AppData.num])\nAttendence: \(AppData.attendence[AppData.num])\nNickname: \(AppData.nickname[AppData.num])"
            }
        

      
    }
    
    @IBAction func editAction(_ sender: UIButton) {
        if(switchOutlet.selectedSegmentIndex == 0){
           
        }
        if(switchOutlet.selectedSegmentIndex == 1){
            
        }
        if(switchOutlet.selectedSegmentIndex == 2){
            
        }
    }
    
    
}
