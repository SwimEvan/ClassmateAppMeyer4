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
    
    @IBOutlet weak var addPerson: UITextField!
    
    @IBOutlet weak var attendanceSegment: UISegmentedControl!
    
    @IBOutlet weak var addNN: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func prevAction(_ sender: UIButton) {
        if AppData.num == 0 {
                  AppData.num = AppData.classroom.count - 1
              } else {
                  AppData.num -= 1
              }
              updateStudentDisplay()
    }
    
    @IBAction func nextAction(_ sender: UIButton) {
        if AppData.num == AppData.classroom.count - 1 {
                    AppData.num = 0
                } else {
                    AppData.num += 1
                }
                updateStudentDisplay()
    }
    
    @IBAction func sortAction(_ sender: UISegmentedControl) {
        if(switchOutlet.selectedSegmentIndex == 0){
            AppData.classroom.sort(by: {$0.name < $1.name})
            
            AppData.num = 0
            studentLabel.text = "Name: \(AppData.classroom[AppData.num].name)\nAttendence: \(AppData.classroom[AppData.num].attendence)\nNickname: \(AppData.classroom[AppData.num].nickname)"
            
        }
        if(switchOutlet.selectedSegmentIndex == 1){
            AppData.classroom.sort(by: {$0.attendence.rawValue < $1.attendence.rawValue})
            AppData.num = 0
            studentLabel.text = "Name: \(AppData.classroom[AppData.num].name)\nAttendence: \(AppData.classroom[AppData.num].attendence)\nNickname: \(AppData.classroom[AppData.num].nickname)"
            
        }
        if(switchOutlet.selectedSegmentIndex == 2){
            AppData.classroom.sort(by: {$0.nickname < $1.nickname})
            AppData.num = 0
            studentLabel.text = "Name: \(AppData.classroom[AppData.num].name)\nAttendence: \(AppData.classroom[AppData.num].attendence)\nNickname: \(AppData.classroom[AppData.num].nickname)"
        }
    }
    
    @IBAction func editAction(_ sender: UIButton) {
        
        if(addPerson.text != ""){
            AppData.classroom[AppData.num].name = addPerson.text!
        }
        
            AppData.classroom[AppData.num].attendence = Attendance(rawValue: attendanceSegment.selectedSegmentIndex)!
        
        if(addNN.text != ""){
            AppData.classroom[AppData.num].nickname = addNN.text!
        }
    }
    
    @IBAction func addAction(_ sender: UIButton) {
        AppData.classroom.append(Classmate(name: addPerson.text!, attendence: Attendance(rawValue: attendanceSegment.selectedSegmentIndex)!, nickname: addNN.text!))
        AppData.num = AppData.classroom.count - 1
              updateStudentDisplay()
    }
    
    func updateStudentDisplay() {
            guard AppData.num < AppData.classroom.count else { return }
            let student = AppData.classroom[AppData.num]
            studentLabel.text = "Name: \(student.name)\nAttendence: \(student.attendence)\nNickname: \(student.nickname)"
        }
}
