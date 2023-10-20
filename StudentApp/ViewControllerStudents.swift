//
//  ViewControllerStudents.swift
//  StudentApp
//
//  Created by BRIAN WANG on 10/11/23.
//

import UIKit

class ViewControllerStudents: UIViewController {
    @IBOutlet weak var addNameOutlit: UITextField!
    @IBOutlet weak var addColorOutlit: UITextField!
    @IBOutlet weak var addNumberOutlit: UITextField!
    @IBOutlet weak var coolOutlit: UISwitch!
    @IBOutlet weak var studentInfoOutlet: UITextView!
    var index = 0
    var students: [Student]!
    var delegate: ViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func backOutlit(_ sender: Any) {
        //action
        if(index > 0){
            index -= 1
            updateUI()
        }
    }
    
    @IBAction func nextOutlit(_ sender: Any) {
        //action
        if(index < students.count - 1){
            index += 1
            updateUI()
        }
    }
    
    @IBAction func ColorAction(_ sender: Any) {
        students = students.sorted(by: { $0.color < $1.color })
        index = 0
        updateUI()
    }
    @IBAction func numberAction(_ sender: Any) {
        students = students.sorted(by: { $0.number < $1.number })
        index = 0
        updateUI()
    }
    @IBAction func addStudentOutlit(_ sender: Any) {
        
        var newStudent = Student(name: addNameOutlit.text!,
                             color: addColorOutlit.text!,
                             number: Int(addNumberOutlit.text!)!,
                             isCool: IsCool.cool)
        if(coolOutlit.isOn != true){
            newStudent.isCool = IsCool.not_Cool;
        }
        students.append(newStudent)
        addNameOutlit.text = ""
        addColorOutlit.text = ""
        addNumberOutlit.text = ""
    }
    func updateUI(){
        
        studentInfoOutlet.text = "Student #\(index + 1):" +
        "\nName: " + students[index].name +
        "\nFavorite Number: " + "\(students[index].number)" +
        "\nFavorite Color: " + students[index].color +
        "\nis \(students[index].isCool)"
        
    }

}

