//
//  testCode.swift
//  Music Sense
//
//  Created by Gallen W T on 25/05/24.
//

import SwiftUI


//struct ContentViewTest: View {
//  @State private var showMenu = false
//
//  var body: some View {
//    ZStack(alignment: .leading) { // Align content to the leading edge
//      if showMenu {
//        MenuView()
//          .frame(maxWidth: 200) // Set menu width
//          .background(Color.gray.opacity(0.5)) // Dim background behind menu
//          .transition(.moveFrom(.leading)) // Slide in from left
//      }
//      VStack {
//        Button(action: {
//          showMenu.toggle()
//        }) {
//          Text("Menu")
//        }
//        Spacer() // Push main content down
//      }
//      .padding(.horizontal, showMenu ? 200 : 0) // Push content when menu is open
//      .transition(.moveFrom(.trailing)) // Slide main content to right
//    }
//  }
//}
//
//struct MenuView: View {
//  var body: some View {
//    List {
//      NavigationLink(destination: Text("Learn Music")) {
//        Text("Belajar Musik")
//      }
//      NavigationLink(destination: Text("Chord Library")) {
//        Text("Perpustakaan Chord")
//      }
//      NavigationLink(destination: Text("Metronom")) {
//        Text("Metronom")
//      }
//    }
//    .navigationTitle("Menu")
//  }
//}
//


struct ContentViewTestCode: View {

        var body: some View {
            NavigationSplitView {
                Sidebar()
            } detail: {
                MainContentView()
            }
        }
    }

    struct Sidebar: View {
        var body: some View {
            List {
                NavigationLink(destination: MenuAView()) {
                    Text("Menu A")
                        .font(.title)
                }
                NavigationLink(destination: MenuBView()) {
                    Text("Menu B")
                        .font(.title)
                }
                NavigationLink(destination: MenuCView()) {
                    Text("Menu C")
                        .font(.title)
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Menua")
        }
    }

    struct MainContentView: View {
        var body: some View {
            VStack {
                Spacer()

                NavigationLink(destination: MenuAView()) {
                    Text("Menu A")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                        .padding(.horizontal, 20)
                }

                NavigationLink(destination: MenuBView()) {
                    Text("Menu B")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                        .padding(.horizontal, 20)
                }

                NavigationLink(destination: MenuCView()) {
                    Text("Menu C")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                        .padding(.horizontal, 20)
                }

                Spacer()
            }
            .navigationTitle("Learning Music")
        }
    }

    struct MenuAView: View {
        var body: some View {
            Text("Menu A Content")
                .font(.largeTitle)
        }
    }

    struct MenuBView: View {
        var body: some View {
            Text("Menu B Content")
                .font(.largeTitle)
        }
    }

    struct MenuCView: View {
        var body: some View {
            Text("Menu C Content")
                .font(.largeTitle)
        }
    }



struct testCode: View {
    var body: some View {
//        SideMenuView(isMenuOpen: fals÷e)
//        ContentViewTest()
        ZStack {
            ContentViewTestCode()
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)

        }
    }
}


#Preview {
    testCode()
}
