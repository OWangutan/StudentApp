//
//  ViewController.swift
//  StudentApp
//
//  Created by BRIAN WANG on 10/11/23.
//

import UIKit

class ViewController: UIViewController {
    var students: [Student] = [
        Student(name: "Noel Ortiz", color: "Purple", number: 8, isCool: IsCool.cool),
        Student(name: "Jake Kenefick", color: "Blue", number: 17, isCool: IsCool.cool),
        Student(name: "Oliver Murray", color: "Black", number: 56, isCool: IsCool.cool),
        Student(name: "Tyler Mok", color: "Red", number: 66, isCool: IsCool.cool),
        Student(name: "Stanislav Stajila", color: "Green", number: 3, isCool: IsCool.cool),
        Student(name: "Andrew Kaiser", color: "Purple", number: 27, isCool: IsCool.cool),
        Student(name: "Mykaela Wallen", color: "Blue", number: 5, isCool: IsCool.cool),
        Student(name: "Brenden Wydra", color: "Purple", number: 20, isCool: IsCool.cool),
        Student(name: "Catherine huseby", color: "Pink", number: 7, isCool: IsCool.cool),
        Student(name: "Liam Cox", color: "Orange", number: 14, isCool: IsCool.cool),
        Student(name: "Annahlu Raclawski", color: "Red", number: 47, isCool: IsCool.cool),
        Student(name: "Natalie DuShane", color: "Blue", number: 14, isCool: IsCool.cool),
        Student(name: "Claire McGuire", color: "Blue", number: 4, isCool: IsCool.cool),
        Student(name: "Olivia Mendez", color: "green", number: 20, isCool: IsCool.cool),
        Student(name: "Avery McAllister", color: "Blue", number: 21, isCool: IsCool.cool),
        Student(name: "Alvin Chen", color: "Blue", number: 4, isCool: IsCool.cool),
        Student(name: "Gabi Avila", color: "Blue", number: 4, isCool: IsCool.cool),
        Student(name: "Miles Richmond", color: "green", number: 7, isCool: IsCool.cool),
        Student(name: "Corey Atkinson", color: "Gray", number: 49, isCool: IsCool.cool),
        Student(name: "Mason Bartell", color: "Green", number: 2, isCool: IsCool.cool),
        Student(name: "Brian Wang", color: "White", number: 5, isCool: IsCool.cool)
        ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //nvc = next view controller
        let nvc = segue.destination as! ViewControllerStudents
        nvc.students = students
        nvc.delegate = self
    }
}
