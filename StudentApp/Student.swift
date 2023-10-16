//
//  File.swift
//  StudentApp
//
//  Created by BRIAN WANG on 10/13/23.
//

import Foundation

public struct Student{
    var name : String
    var color : String
    var number : Int
    var isCool : IsCool
}

enum IsCool{
    case notCool
    case cool
}
