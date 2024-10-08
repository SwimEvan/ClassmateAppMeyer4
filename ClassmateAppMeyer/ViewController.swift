//
//  ViewController.swift
//  ClassmateAppMeyer
//
//  Created by EVAN MEYER on 10/2/24.
//

import UIKit
class AppData{
    static var num = 0
    static var classroom = [Classmate]()
    static var score = 0
    static var outOf = 0
}

class ViewController: UIViewController {
    var classroom = [Classmate]()
    var hi = 0
    @IBOutlet weak var studentOutlet: UILabel!
    @IBOutlet weak var passwordOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        AppData.classroom
            .append(
                Classmate(
                    name: "Evan",
                    attendence: .present,
                    nickname: "Flutin Evan"
                )
            )
        AppData.classroom
            .append(
                Classmate(
                    name: "Eva",
                    attendence: .tardy,
                    nickname: "No Pickle Noftz"
                )
            )
        AppData.classroom
            .append(
                Classmate(
                    name: "Ava",
                    attendence: .present,
                    nickname: "Abba Ava"
                )
            )
        AppData.classroom
            .append(
                Classmate(
                    name: "Justin",
                    attendence: .absent,
                    nickname: "Wicked Weber"
                )
            )
        AppData.classroom
            .append(
                Classmate(
                    name: "Brennan",
                    attendence: .present,
                    nickname: "Breaking Brennan"
                )
            )
        AppData.classroom
            .append(
                Classmate(
                    name: "Cam",
                    attendence: .present,
                    nickname: "Chef Cam"
                )
            )
        AppData.classroom
            .append(
                Classmate(
                    name: "John",
                    attendence: .present,
                    nickname: "Jimmy John"
                )
            )
        AppData.classroom
            .append(
                Classmate(
                    name: "Jayden",
                    attendence: .absent,
                    nickname: "Sleepy Sawyer"
                )
            )
        AppData.classroom
            .append(
                Classmate(
                    name: "Sean",
                    attendence: .absent,
                    nickname: "Boat Gone Sean"
                )
            )
        AppData.classroom
            .append(
                Classmate(
                    name: "Ryan",
                    attendence: .tardy,
                    nickname: "Rainbow Ryan"
                )
            )
        AppData.classroom
            .append(
                Classmate(
                    name: "Logan",
                    attendence: .absent,
                    nickname: "Goog Ball Googan"
                )
            )
        AppData.classroom
            .append(
                Classmate(
                    name: "Michael",
                    attendence: .tardy,
                    nickname: "Michael Michael Motorcycle"
                )
            )
        AppData.classroom
            .append(
                Classmate(
                    name: "Daniel",
                    attendence: .present,
                    nickname: "Bananiel"
                )
            )
        AppData.classroom
            .append(
                Classmate(
                    name: "Matthew",
                    attendence: .absent,
                    nickname: "Glitch Fitch"
                )
            )
        AppData.classroom
            .append(
                Classmate(
                    name: "Ryan",
                    attendence: .present,
                    nickname: "Rat Ryan"
                )
            )
        AppData.classroom
            .append(
                Classmate(
                    name: "Peter",
                    attendence: .present,
                    nickname: "Peter Kickle"
                )
            )
        
    }
    
    @IBAction func editorModeAction(_ sender: UIButton) {
        if (passwordOutlet.text == "skibidi toilet"){
            performSegue(withIdentifier: "EditorModeSegue", sender: nil)
        }
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
    func updateStudentDisplay() {
        guard AppData.num < AppData.classroom.count else { return }
        let student = AppData.classroom[AppData.num]
        studentOutlet.text = "Name: \(student.name)\nAttendence: \(student.attendence)\nNickname: \(student.nickname)"
    }
    
}

