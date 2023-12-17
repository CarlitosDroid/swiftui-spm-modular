//
//  UserListView.swift
//
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import SwiftUI
import Domain

struct UserListView: View {
    
    private let users: [User]
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16.0, content: {
            ForEach(users) { user in
                UserItemView(user: user)
            }
        })
        
    }
    
    public init(users: [User]) {
        self.users = users
    }
}

//#if DEBUG
//#Preview {
//    UserListView(users: Array(repeating: User.mock, count: 10))
//}
//#endif
