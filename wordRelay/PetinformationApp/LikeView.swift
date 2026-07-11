//
//  LikeView.swift
//  PetinformationApp
//
//  Created by 전시언 on 5/20/26.
//

import SwiftUI

struct LikeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("좋아하는 것")
                .font(.system(size: 20))
                .bold()
            Divider()
            Text(" - 각종고기 🐷")
            Text(" - 장본게 담겨 있는 종량제 봉투")
            Text(" - 집에 새로 온 사람")
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.mint)
                .opacity(0.2)  //투명도
                .shadow(radius: 5)
        )    }
}

#Preview {
    LikeView()
}
