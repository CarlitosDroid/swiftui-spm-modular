//
//  UserRepositoryProtocol.swift
//
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import Foundation

public protocol UserRepositoryProtocol {
    func getUserFromMemory() -> [User]
    func getUserFromDataBase() -> [User]
    func getUserFromRemote() -> [User]
}
