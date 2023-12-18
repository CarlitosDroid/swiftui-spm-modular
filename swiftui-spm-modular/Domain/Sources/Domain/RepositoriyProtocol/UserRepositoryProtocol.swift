//
//  UserRepositoryProtocol.swift
//
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import Foundation

public protocol UserRepositoryProtocol {
    func getUsersFromMemory() -> [User]
    func getUserFromMemory(id: String) -> User?
    func getUsersFromDataBase() -> [User]
    func getUsersFromRemote() -> [User]
}
