//
//  Container+Injection.swift
//  swiftui-spm-modular
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import Foundation
import Factory
import Domain
import Data
import User

@MainActor
extension Container {
    
    
    // Data
    var userMemory: Factory<UserMemory> {
        Factory(self) {
            UserMemory()
        }
        .singleton
    }
    
    // Repositories
    var userRepository: Factory<UserRepositoryProtocol> {
        Factory(self) {
            UserRepository(userMemory: self.userMemory.callAsFunction())
        }
        .scope(.cached)
    }
    
    // ViewModel
    var userViewModel: Factory<UserViewModel> {
        Factory(self) {
            UserViewModel(userRepositoryProtocol: self.userRepository.callAsFunction())
        }
    }
}
