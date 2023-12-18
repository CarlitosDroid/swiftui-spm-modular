//
//  swiftui_spm_modularApp.swift
//  swiftui-spm-modular
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import SwiftUI
import ShowTime

@main
struct swiftui_spm_modularApp: App {
    var body: some Scene {
        WindowGroup {
            AppView()
        }
    }
}

extension swiftui_spm_modularApp {
    private func enableVisualTouchesOnDebug() {
        #if DEBUG
        ShowTime.enabled = .debugOnly
        ShowTime.fillColor = .lightGray.withAlphaComponent(0.7)
        ShowTime.strokeColor = .lightGray
        ShowTime.strokeWidth = 1
        ShowTime.disappearDelay = 0.1
        #endif
    }
}
