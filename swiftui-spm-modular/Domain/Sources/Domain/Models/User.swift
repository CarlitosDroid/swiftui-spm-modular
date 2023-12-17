//
//  User.swift
//
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import Foundation

public struct User: Identifiable {
    public var id: String
    public let name: String
    public let age: Int
    
    public init(id: String, name: String, age: Int) {
        self.id = id
        self.name = name
        self.age = age
    }
}
