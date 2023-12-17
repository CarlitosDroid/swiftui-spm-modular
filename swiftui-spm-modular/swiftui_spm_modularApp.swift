//
//  swiftui_spm_modularApp.swift
//  swiftui-spm-modular
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import SwiftUI
import User

@main
struct swiftui_spm_modularApp: App {
    var body: some Scene {
        WindowGroup {
            UserView(viewModel: UserViewModel())
        }
    }
}
