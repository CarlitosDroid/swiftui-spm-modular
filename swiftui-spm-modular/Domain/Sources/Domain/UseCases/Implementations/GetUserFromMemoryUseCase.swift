//
//  File.swift
//  
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import Foundation

public class GetUserFromMemoryUseCase: GetUserFromMemoryUseCaseProcotol {
    
    private let repository: UserRepositoryProtocol
    
    public init(repository: UserRepositoryProtocol) {
        self.repository = repository
    }
    
    public func exec(id: String) -> User? {
        return repository.getUserFromMemory(id: id)
    }

}
