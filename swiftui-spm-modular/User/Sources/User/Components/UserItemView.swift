//
//  SwiftUIView.swift
//
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 17/12/23.
//

import SwiftUI
import Domain

struct UserItemView: View {
    
    let user: User
    
    var body: some View {
        VStack {
            AsyncImage(
                url: URL(string: "https://clevertap.com/wp-content/uploads/2019/08/user-personas-header.jpg")!
            ) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                Color.gray
            }
            .frame(height: 80)
            Text("\(user.id) - \(user.name)")
        }
    }
}

#if DEBUG
struct UserItemView_Previews: PreviewProvider {
    static var previews: some View {
        UserItemView(user: UserViewModel().users[0])
    }
}
#endif
