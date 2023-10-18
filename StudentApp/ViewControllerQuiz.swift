//
//  ViewControllerQuiz.swift
//  StudentApp
//
//  Created by BRIAN WANG on 10/11/23.
//

import UIKit

class ViewControllerQuiz: UIViewController {
    @IBOutlet weak var QuizOutlit: UITextView!
    var students: [Student]!
    override func viewDidLoad() {
        super.viewDidLoad()
        //newQuetion()
        // Do any additional setup after loading the view.
    }
    
    func newQuetion(){
        let randomInt = Int.random(in: 0..<students.count)
        QuizOutlit.text = 
        "\nFavorite Number: " + "\(students[randomInt].number)" +
        "\nFavorite Color: " + students[randomInt].color +
        "\nis \(students[randomInt].isCool)"
    }

}
