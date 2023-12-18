//
//  SwiftUIView.swift
//  
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import SwiftUI

struct UserGreetingView: View {
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            HStack {
                Text("Hello Carlos Vargas")
                Spacer()
            }
            Text("Your nickname is CarlitosDroid")
        }
        .background(mainBackground)
        .background(blurBackground)
        .padding(.horizontal, 16.0)
        .padding(.bottom, 32.0)
    }
}

private extension UserGreetingView {
    
    var gradient: Gradient {
        Gradient(
            colors: [
                Color.red,
                Color.black
            ]
        )
    }
    
    var mainBackground: some View {
        LinearGradient(
            gradient: gradient,
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .cornerRadius(12.0)
    }
    
    var blurBackground: some View {
        LinearGradient(
            gradient: gradient,
            startPoint: .leading,
            endPoint: .trailing
        )
        .cornerRadius(12.0)
        .padding(16.0)
        .offset(x: 0.0, y: 32.0)
        .blur(radius: 16.0)
    }
    
}

#if DEBUG
struct UserGreetingView_Previews: PreviewProvider {
    static var previews: some View {
        UserGreetingView()
    }
}
#endif

