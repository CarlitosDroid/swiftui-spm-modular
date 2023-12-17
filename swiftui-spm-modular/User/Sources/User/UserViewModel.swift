//
//  UserViewModel.swift
//  
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import Foundation
import Domain

@MainActor
public final class UserViewModel: ObservableObject {
    
    @Published public private(set) var users: [User] = []
    
    public func fetchUsers() {
        users = [
            User(id: "1", name: "Carlos", age: 30),
            User(id: "2", name: "Ronaldo", age: 24),
            User(id: "3", name: "Gerson", age: 27),
        ]
    }
    
    public init() {
        fetchUsers()
    }
    
}
