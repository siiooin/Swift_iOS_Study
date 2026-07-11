//
//  ContentView.swift
//  wordRelay
//
//  Created by 전시언 on 5/21/26.
//

import SwiftUI

struct ContentView: View {
    let title: String = "끝말잇기 게임"
    @State var nextWord: String = ""
    @State var words: [String] = ["물컵", "컵받침", "침착맨"]
    //state: newtWord에 저장된 값을 다시 view에 써주는 일을 한다
    //SwiftUI가 별도 저장소에 상태를 관리해서 변경 가능하게 만든다
    
    @State var showAlert: Bool = false
    var body: some View {
        
        VStack {
            Text(title)
                .font(.title)
                .bold()
                .padding(.vertical, 16)
                .padding(.horizontal, 20)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.teal)
                        .opacity(0.2)
                        .shadow(radius: 5 )
                )
                .padding(.top, 10)
            
                .contextMenu {
                }
            Text(nextWord)
            
            HStack {
                TextField("단어를 입력하세요", text: $nextWord)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                        
                    )
                
                Button(action: {
                    print("입력하신 단어는: ",
                          nextWord)
                    if words.last?.last?.lowercased() ==
                        nextWord.first?.lowercased(){
                        words.append(nextWord)
                        nextWord=""
                    }else{
                        
                        showAlert = true;
                        nextWord = ""
                    }
                    
                }, label: {
                    Text("확인")
                        .foregroundStyle(Color.white)
                        .padding(.horizontal)
                        .padding(.vertical, 12)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                        )
                })
                .alert("끝말이 이어지는 단어를 입력해주세요.", isPresented: $showAlert){
                    Button("확인", role: .cancel){
                        showAlert = false
                    }
                }
            }
            .padding(.horizontal)
            .padding(.top)
            
            List{
                ForEach(words.reversed(), id: \.self){word in
                    Text(word)
                        .font(.title2)
                }
                
            }
            .listStyle(.plain)
            
            
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
