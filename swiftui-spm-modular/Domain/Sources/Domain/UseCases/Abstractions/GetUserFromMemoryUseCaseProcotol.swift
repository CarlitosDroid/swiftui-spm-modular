//
//  File.swift
//  
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import Foundation

public protocol GetUserFromMemoryUseCaseProcotol {
    
    func exec(id: String) -> User?
}

