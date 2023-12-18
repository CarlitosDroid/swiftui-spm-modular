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
    
    public func getUsersFromMemory() -> [User] {
        return userMemory.usersData.map { (userData: UserData) in
            User(
                id: "1",
                name: userData.name,
                age: userData.age
            )
        }
    }
    
    public func getUserFromMemory(id: String) -> User? {
        
        let userData = userMemory.usersData[0]
        let user = User(
            id: userData.id,
            name: userData.name,
            age: userData.age
        )
        
        return user
    }
    
    public func getUsersFromDataBase() -> [User] {
        return []
    }
    
    public func getUsersFromRemote() -> [User] {
        return []
    }
    
}
