//
//  ContentView.swift
//  Dialogs
//
//  Created by Альберт Хайдаров on 23.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var title = "Are you sure?"
    @State private var isShowingDialog = false
    
    
    var body: some View {
        Button("Empty Trash") {
            isShowingDialog = true
        }
        .alert(title,
               isPresented: $isShowingDialog) {
            Button("Empty Trash",
                   role: .destructive) {
                print("trash cleared")
            }
            Button("Cancel",
                   role: .cancel) {
                isShowingDialog = false
            }
        }
//        .confirmationDialog(title,
//                            isPresented: $isShowingDialog) {
//            Button("Empty Trash",
//                               role: .destructive) {
//                            print("trash cleared")
//                        }
//                        Button("Cancel",
//                               role: .cancel) {
//                            isShowingDialog = false
//                        }
//        }
//        .sheet(isPresented: $isShowingDialog,
//               onDismiss: {}) {
//                VStack{
//                    Text("License agreement")
//                        .font(.title)
//                        .padding(50)
//                    Text("""
//Terms and conditions goes here&
//""")
//                    .padding(50)
//                    Button("Dismiss", action:  {
//                        isShowingDialog.toggle()
//                    })
//                }
//            }
        
//        .popover(isPresented: $isShowingDialog) {
//            Text("Popover content")
//                .padding()
//        }
        
        Menu("Actions") {
            Button("Duplicate") {
              
            }
            Button("Rename") {
                
            }
            Button("Delete") {
               
            }
            Menu("Copy") {
                Button("Copy") {
                   
                }
                Button("Copy formatted") {
                   
                }
                Button("Copy Library path") {
                   
                }
            }
        }
        
        
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
