//
//  UserRepository.swift
//  
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import Foundation
import Domain

public class UserRepository: UserRepositoryProtocol {
    
    private let userMemory: UserMemory
    
    public init(userMemory: UserMemory) {
        self.userMemory = userMemory
    }
    
    public func getUserFromMemory() -> [User] {
        return userMemory.usersData.map { (userData: UserData) in
            User(
                id: "1",
                name: userData.name,
                age: userData.age
            )
        }
    }
    
    public func getUserFromDataBase() -> [User] {
        return []
    }
    
    public func getUserFromRemote() -> [User] {
        return []
    }
        
}
