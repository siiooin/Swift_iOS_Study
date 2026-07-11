//
//  ContentView.swift
//  ToDo
//
//  Created by 전시언 on 7/6/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query var todoList: [Todo] = [
        Todo(title: "친구 만나기"),
        Todo(title: "과제 제출하기"),
        Todo(title: "푹 쉬기")
    ]
    
    func addTodo(){
        withAnimation{
            let newTodo = Todo(title: "새로운 투두")
            modelContext.insert(newTodo)
        }
        //state 변수들 실시간으로 바뀔 때 애니메이션 사용
    }
    
    func deleteTodo(indexSet: IndexSet){
        withAnimation{
            for index in indexSet{
                let todo = todoList[index]
                modelContext.delete(todo)
            }
        }
    }
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(todoList){ todo in
                    HStack{
                        Image(systemName: todo.isCompleted == true ? "circle.fill" : "circle")
                            .foregroundStyle(Color.pink)
                            .onTapGesture {
                                todo.isCompleted.toggle()
                            }
                        
                        NavigationLink {
                            TodoDetailView(todo: todo)
                            
                        } label: {
                            Text(todo.title)
                                .strikethrough(todo.isCompleted, color: Color.gray)
                                .foregroundStyle(todo.isCompleted == true ? Color.gray : Color.primary)
                        }
                    }
                    .listRowSeparator(.hidden)
                    
                }
                .onDelete(perform:deleteTodo)
                                    
            }
            .listStyle(.plain)
            .navigationTitle("ToDo 🏓")
            .toolbar{
                ToolbarItem{
                    EditButton()
                }
                ToolbarItem{
                    Button(action:addTodo, label: {
                        Image(systemName: "plus")
                    })
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
