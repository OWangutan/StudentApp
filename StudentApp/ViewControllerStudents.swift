//
//  ViewControllerStudents.swift
//  StudentApp
//
//  Created by BRIAN WANG on 10/11/23.
//

import UIKit

class ViewControllerStudents: UIViewController {
    @IBOutlet weak var studentInfoOutlet: UITextView!
    var students: [Student] = [
        Student(name: "Noel Ortiz", color: "Purple", number: 8),
        Student(name: "Jake Kenefick", color: "Blue", number: 17),
        Student(name: "Oliver Murray", color: "Black", number: 56),
        Student(name: "Tyler Mok", color: "Red", number: 66),
        Student(name: "Stanislav Stajila", color: "Green", number: 3),
        Student(name: "Andrew Kaiser", color: "Purple", number: 27),
        Student(name: "Mykaela Wallen", color: "Blue", number: 5),
        Student(name: "Brenden Wydra", color: "Purple", number: 20),
        Student(name: "Catherine huseby", color: "Pink", number: 7),
        Student(name: "Liam Cox", color: "Orange", number: 14),
        Student(name: "Annahlu Raclawski", color: "Red", number: 47),
        Student(name: "Natalie DuShane", color: "Blue", number: 14),
        Student(name: "Claire McGuire", color: "Blue", number: 4),
        Student(name: "Olivia Mendez", color: "green", number: 20),
        Student(name: "Avery McAllister", color: "Blue", number: 21),
        Student(name: "Alvin Chen", color: "Blue", number: 4),
        Student(name: "Gabi Avila", color: "Blue", number: 4),
        Student(name: "Miles Richmond", color: "green", number: 7),
        Student(name: "Corey Atkinson", color: "Gray", number: 49),
        Student(name: "Mason Bartell", color: "Green", number: 2),
        Student(name: "Brian Wang", color: "White", number: 5)
        ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backOutlit(_ sender: Any) {
    }
    
    
    func updateUI(){
        studentInfoOutlet.text =
    }
}

