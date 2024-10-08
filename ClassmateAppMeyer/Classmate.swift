//
//  Classmate.swift
//  ClassmateAppMeyer
//
//  Created by EVAN MEYER on 10/2/24.
//

import Foundation

class Classmate {
    var name: String
    var attendence: Attendance
    var nickname: String

    init(name: String, attendence: Attendance, nickname: String) {
        self.name = name
        self.attendence = attendence
        self.nickname = nickname
    }
    
}

enum Attendance: Int {
    case present = 0, tardy, absent
}
