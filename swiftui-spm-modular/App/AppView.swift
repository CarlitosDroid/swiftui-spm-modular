//
//  ContentView.swift
//  swiftui-spm-modular
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import SwiftUI
import User
import UserDetail
import Factory

struct AppView: View {
    
    @State private var showingPaymentScreen = false
    
    var body: some View {
        NavigationView(content: {
            ZStack(content: {
                UserView(viewModel: Container.shared.userViewModel())
                NavigationLink("", isActive: $showingPaymentScreen) {
                    UserDetailView()
                }
            })
        })
    }
}

#Preview {
    AppView()
}
