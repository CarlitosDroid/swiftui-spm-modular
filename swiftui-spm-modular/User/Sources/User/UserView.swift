//
//  UserView.swift
//
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import SwiftUI

public struct UserView: View {
    
    @ObservedObject private var viewModel: UserViewModel
    
    public var body: some View {
        List {
            headerSection
            userlistSection
        }
        .listStyle(.plain)
        .background(Color.blue)
        .safeAreaInset(edge: .top, spacing: 0.0) {
            EmptyView()
                .frame(height: 1.0)
                .background(Color.green)
        }
    }
    
    public init(viewModel: UserViewModel) {
        self.viewModel = viewModel
    }
}

private extension UserView {
    var headerSection: some View {
        Section {
            Text("Welcome!")
                .multilineTextAlignment(.center)
            UserGreetingView()
        }
    }
    
    var userlistSection: some View {
        Section {
            UserListView(users: viewModel.users)
        } header: {
            Text("USER LIST HEADER")
        }

    }
}

#Preview {
    UserView(viewModel: UserViewModel())
}
