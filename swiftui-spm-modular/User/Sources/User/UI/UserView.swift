//
//  UserView.swift
//
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import SwiftUI
import Styleguide

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
                .background(Colors.metallicSeaweed.swiftUIColor)
        }
    }
    
    public init(viewModel: UserViewModel) {
        self.viewModel = viewModel
    }
}

private extension UserView {
    var headerSection: some View {
        Section {
            Text(Strings.User.Welcome.text)
                .multilineTextAlignment(.center)
                .font(Fonts.Inter.semiBold.swiftUIFont(size: 32))
            UserGreetingView()
        }
    }
    
    var userlistSection: some View {
        Section {
            UserListView(users: viewModel.users)
        } header: {
            Text(Strings.User.List.Header.text)
        }
        
    }
}

//#Preview {
//    let mockUserViewModel = Container.shared.userViewModel.register {
//        UserViewModel(
//            userRepositoryProtocol: UserRepository(
//                userMemory: UserMemory()
//            )
//        )
//    }
//    UserView(viewModel: mockUserViewModel)
//}
