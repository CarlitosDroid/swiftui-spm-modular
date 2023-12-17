//
//  User.swift
//
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import Foundation

public struct User: Identifiable, Equatable {
    public var id: String
    public let name: String
    public let age: Int
    
    public init(id: String, name: String, age: Int) {
        self.id = id
        self.name = name
        self.age = age
    }
}

#if DEBUG
public extension User {

    static let mock = User(id: "1", name: "Carlos", age: 30)
}
#endif
