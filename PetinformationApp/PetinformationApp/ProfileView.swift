//
//  ProfileView.swift
//  PetinformationApp
//
//  Created by 전시언 on 5/20/26.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        HStack {
            Image("dogProfile")
                .resizable()
                .frame(width: 120, height: 120)
                .clipShape( /*@START_MENU_TOKEN@*/
                    Circle() /*@END_MENU_TOKEN@*/
                )
                .overlay(
                    Circle().stroke(
                        Color.teal,
                        lineWidth: 3
                    )
                )
            
            VStack(alignment: .leading) {
                Text("이름: 키도")
                Text("시바견")
                Text("2017년 5월생")
            }
            .font(.system(size: 20))
            .padding(.leading, 20)
            
        }
        .padding(.bottom, 20)
    }
   
}

#Preview {
    ProfileView()
}
