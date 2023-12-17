//
//  swiftui_spm_modularApp.swift
//  swiftui-spm-modular
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import SwiftUI
import User
import UserDetail

@main
struct swiftui_spm_modularApp: App {
    
    @State private var showingPaymentScreen = true
    
    var body: some Scene {
        WindowGroup {
            NavigationView(content: {
                ZStack(content: {
                    UserView(viewModel: UserViewModel())
                    NavigationLink("", isActive: $showingPaymentScreen) {
                        UserDetailView()
                    }
                })
            })
        }
    }
}
