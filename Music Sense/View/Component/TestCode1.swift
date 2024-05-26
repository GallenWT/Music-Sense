//////////
//////////  TestCode1.swift
//////////  Music Sense
//////////
//////////  Created by Gallen W T on 25/05/24.
//////////
////////
////import SwiftUI
////struct ContentViewNgueng: View {
////    @State private var isShowingSidebar = false
////
////    var body: some View {
////        NavigationView {
////            VStack(alignment: .leading) {
////                Button(action: {
////                    isShowingSidebar.toggle()
////                }) {
////                    Image(systemName: "sidebar.left")
////                        .resizable()
////                        .aspectRatio(contentMode: .fit)
////                        .frame(width: 30, height: 30)
////                        .foregroundColor(.white)
////                        .padding()
////                }
////                .frame(maxWidth: .infinity, alignment: .leading)
////                .background(Color.gray.opacity(0.1))
////                .edgesIgnoringSafeArea(.top)
////                
////                if isShowingSidebar {
////                    Sidebar1()
////                        .frame(maxWidth: 250)
////                }
////                Spacer()
////            }
////            .frame(maxWidth: .infinity)
////            .background(Color.gray.opacity(0.1))
////            
////            Text("Learn Music")
////                .padding()
////            
////            // Add the rest of your content here
////        }
////        .navigationViewStyle(StackNavigationViewStyle()) // Use StackNavigationViewStyle to prevent the navigation bar from taking up space
////    }
////}
////
//////
//////struct ContentViewNgueng: View {
//////    @State private var isShowingSidebar = false
//////
//////    var body: some View {
//////        HStack(alignment: .top) {
//////            if isShowingSidebar {
//////                Sidebar1()
//////                    .frame(maxWidth: 250)
//////            }
//////            Spacer()
//////            Button(action: {
//////                isShowingSidebar.toggle()
//////            }) {
//////                Image(systemName: "sidebar.left")
//////                    .resizable()
//////                    .aspectRatio(contentMode: .fit)
//////                //                    .imageScale(.large)
//////                    .frame(width: 300, height: 300)
//////                    .foregroundColor(.white)
//////            }
//////            .padding()
//////        Text("Learn Music")
//////        }
//////        .frame(maxWidth: .infinity)
//////        .background(Color.gray.opacity(0.1))
//////    }
//////}
////
////struct Sidebar2: View {
////    var body: some View {
////        List {
////            NavigationLink(destination: MenuAView()) {
////                Text("Menu A")
////                    .font(.title)
////            }
////            NavigationLink(destination: MenuBView()) {
////                Text("Menu B")
////                    .font(.title)
////            }
////            NavigationLink(destination: MenuCView()) {
////                Text("Menu C")
////                    .font(.title)
////            }
////        }
////        .listStyle(SidebarListStyle())
////        .navigationTitle("Menua")
////    }
////}
////
//////struct MenuAView: View {
//////    var body: some View {
//////        Text("This is Menu A View")
//////    }
//////}
//////
//////struct MenuBView: View {
//////    var body: some View {
//////        Text("This is Menu B View")
//////    }
//////}
//////
//////struct MenuCView: View {
//////    var body: some View {
//////        Text("This is Menu C View")
//////    }
//////}
////
////struct ContentView_Previews: PreviewProvider {
////    static var previews: some View {
////        ContentViewNgueng()
////            .previewLayout(.fixed(width: 800, height: 600))
////    }
////}
//////import SwiftUI
//////
//////struct ContentView1: View {
//////    @State private var selection: SidebarItem?
//////    @State private var isSidebarVisible: Bool = false
//////
//////    var body: some View {
//////        NavigationView {
//////            List(selection: $selection) {
//////                ForEach(MenuItem.sampleData) { menuItem in
//////                    Section(header: MenuSectionHeader(name: menuItem.name)) {
//////                        OutlineGroup(menuItem.children ?? [SidebarItem](), children: \.children) { child in
//////                            Label(child.name, Image(child.icon))
//////                                .tag(child)
//////                        }
//////                    }
//////                }
//////            }
////////            .toolbar {
////////                ToolbarItem(placement: .automatic) {
////////                    Button(action: toggleSidebar) {
////////                        Image(systemName: isSidebarVisible ? "sidebar.left" : "sidebar.right")
////////                    }
////////                }
////////            }
//////
//////            DetailView(selection: selection)
//////                .toolbar {
//////                    ToolbarItem(placement: .automatic) {
//////                        Button(action: toggleSidebar) {
//////                            Image(systemName: isSidebarVisible ? "sidebar.left" : "sidebar.right")
//////                        }
//////                    }
//////                }
//////        }
//////    }
//////
//////    private func toggleSidebar() {
//////        withAnimation {
//////            isSidebarVisible.toggle()
//////        }
//////    }
//////}
//////
//////struct MenuSectionHeader: View {
//////    var name: String
//////
//////    var body: some View {
//////        Text(name)
//////            .font(.headline)
//////            .padding(.leading, -10)
//////    }
//////}
//////
//////struct DetailView: View {
//////    var selection: SidebarItem?
//////
//////    var body: some View {
//////        VStack {
//////            if let selection = selection {
//////                Text("Detail for \(selection.name)")
//////                    .font(.largeTitle)
//////            } else {
//////                Text("Select an item")
//////                    .font(.largeTitle)
//////            }
//////        }
//////        .padding()
//////    }
//////}
//////
//////struct MenuItem: Identifiable {
//////    var id = UUID()
//////    var name: String
//////    var children: [SidebarItem]?
//////
//////    static var sampleData: [MenuItem] {
//////        [
//////            MenuItem(name: "Menu", children: [
//////                SidebarItem(name: "Learn Music", icon: "Logo"),
//////                SidebarItem(name: "Option A2", icon: "Logo")
//////            ]),
//////            MenuItem(name: "Menu B", children: [
//////                SidebarItem(name: "Option B1", icon: "Logo"),
//////                SidebarItem(name: "Option B2", icon: "Logo")
//////            ]),
//////            MenuItem(name: "Menu C", children: [
//////                SidebarItem(name: "Option C1", icon: "Logo"),
//////                SidebarItem(name: "Option C2", icon: "Logo")
//////            ])
//////        ]
//////    }
//////}
//////
//////struct SidebarItem: Identifiable, Hashable {
//////    var id = UUID()
//////    var name: String
//////    var icon: String
//////    var children: [SidebarItem]?
//////}
//////
//////struct ContentView_Previews: PreviewProvider {
//////    static var previews: some View {
//////        ContentView1()
//////    }
//////}
/////
//import SwiftUI
//
//struct ContentViewNgueng: View {
//    @State private var isShowingSidebar = false
//    @State private var searchText = ""
//
//    var body: some View {
//        NavigationView {
//            ZStack {
//                // Apply background color to the entire content
//                Color.gray.opacity(0.1) // Change Color.gray to your desired color
//                
//                HStack(alignment: .top) {
//                    if isShowingSidebar {
//                        Sidebar1()
//                            .frame(maxWidth: 250)
//                            .background(Color.red) // Change Color.gray to your desired color
//                            .transition(.move(edge: .leading))
//                    }
//                    
//                    VStack {
//                        HStack {
//                            Button(action: {
//                                withAnimation {
//                                    isShowingSidebar.toggle()
//                                }
//                            }) {
//                                Image(systemName: "sidebar.left")
//                                    .resizable()
//                                    .aspectRatio(contentMode: .fit)
//                                    .frame(width: 30, height: 30)
//                                    .foregroundColor(.white)
//                            }
//                            .padding()
//                            
//                            Spacer()
//                            
//                            SearchBar(text: $searchText)
//                                .frame(maxWidth: 400)
//                                .padding(70)
//                        }
//                        
//                        Spacer()
//                        
//                        Text("Learn Music")
//                            .font(.largeTitle)
//                            .padding()
//                        
//                        Spacer()
//                    }
//                    
//                    Spacer()
//                }
//                .frame(maxWidth: .infinity)
//            }
//            .edgesIgnoringSafeArea(.all)
//            .navigationViewStyle(StackNavigationViewStyle())
//        }
//    }
//}
//
//struct Sidebar1: View {
//    var body: some View {
//        VStack {
//            NavigationLink(destination: MenuAView()) {
//                Text("Menu A")
//                    .font(.title)
//            }
//            NavigationLink(destination: MenuBView()) {
//                Text("Menu B")
//                    .font(.title)
//            }
//            NavigationLink(destination: MenuCView()) {
//                Text("Menu C")
//                    .font(.title)
//            }
//        }
////        .listStyle(SidebarListStyle())
//        .navigationTitle("Menu")
//    }
//}
//
//struct SearchBar: View {
//    @Binding var text: String
//
//    var body: some View {
//        HStack {
//            Image(systemName: "magnifyingglass")
//                .foregroundColor(.gray)
//            TextField("Search", text: $text)
//                .foregroundColor(.primary)
//                .padding(7)
//                .padding(.horizontal, 25)
//                .background(Color(.systemGray6))
//                .cornerRadius(8)
//                .overlay(
//                    HStack {
//                        Spacer()
//                        if !text.isEmpty {
//                            Button(action: {
//                                self.text = ""
//                            }) {
//                                Image(systemName: "xmark.circle.fill")
//                                    .foregroundColor(.gray)
//                                    .padding(.trailing, 8)
//                            }
//                        }
//                    }
//                )
//        }
//        .padding(.horizontal, 10)
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentViewNgueng()
////            .previewLayout(.fixed(width: 800, height: 600))
//    }
//}

//-----------------------------------------------------------------------------------------------------

//import SwiftUI
//
//struct ContentView2: View {
//    @State private var selectedCard: Int?
//
//    var body: some View {
//        NavigationSplitView {
//            VStack {
//                ForEach(1..<5) { index in
//                    CardView(title: "Card \(index)", cardID: index, isSelected: selectedCard == index)
//                        .onTapGesture {
//                            selectedCard = index
//                        }
//                }
//                Spacer()
//            }
//            .padding()
//            .navigationDestination(
//                isPresented: Binding(
//                    get: { selectedCard != nil },
//                    set: { if !$0 { selectedCard = nil } }
//                ),
//                destination: { DetailView(cardID: selectedCard ?? 0) }
//            )
//        } detail: {
//            Text("DetailView")
//        }
//    }
//}
//
//struct CardView: View {
//    let title: String
//    let cardID: Int
//    let isSelected: Bool
//    
//    var body: some View {
//        VStack {
//            Text(title)
//                .font(.title)
//                .padding()
//                .background(isSelected ? Color.blue : Color.gray)
//                .foregroundColor(.white)
//                .cornerRadius(10)
//        }
//        .padding(.vertical)
//    }
//}
//
//struct DetailView: View {
//    let cardID: Int
//    
//    var body: some View {
//        Text("Detail for Card \(cardID) skh")
//            .font(.title)
//            .padding()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView2()
//    }
//}

import SwiftUI

struct ContentView4: View {
    @State private var selectedMusic: MusicDetail?

    var body: some View {
        NavigationSplitView {
            List {
                MusicCardViewBox1(musics: recentMusic, selectedMusic: $selectedMusic)
            }
            .listStyle(SidebarListStyle())

            
        } detail: {
//            if let selectedMusic = selectedMusic {
//            
//                    DetailView(music: selectedMusic)
//            
//            } else {
                Text("Select a music")
//            }
        }
        .onAppear {
            // Close the detail view when the app first appears
            selectedMusic = nil
        }
    }
}

//struct MusicCardViewBox1: View {
//    var musics: [MusicDetail]
//    @Binding var selectedMusic: MusicDetail?
//
//    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack(spacing: 40) {
//                ForEach(musics) { music in
//                    //                    NavigationLink(destination: DetailView(music: music), tag: music, selection: $selectedMusic) {
//                    //                        musicCardTemplateRec(music: music, isSelected: selectedMusic == music)
//                    //                    }
//                    NavigationLink(
//                        destination: DetailView(music: music),
//                        isActive: Binding<Bool>(
//                            get: { selectedMusic == music },
//                            set: { isActive in
//                                if isActive {
//                                    selectedMusic = music
//                                }
//                            }
//                        ),
//                        label: {
//                            musicCardTemplateRec(music: music)
//                        }
//
//                        }
//                        }
//                            .padding(.leading, 50)
//                            .padding(.trailing, 50)
//                            .padding(.bottom, 40)
//                        }
//                        }
//                        }


struct MusicCardViewBox1: View {
    var musics: [MusicDetail]
    @Binding var selectedMusic: MusicDetail?
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 40) {
                ForEach(musics) { music in
                    NavigationLink(
                        destination: LearnMusicDetailView(music: music),
                        isActive: Binding<Bool>(
                            get: { selectedMusic == music },
                            set: { _ in }
                        )
                    ) {
                        musicCardTemplateBox(music: music, isSelected: selectedMusic == music)
                    }
                }
            }
            .padding(.leading, 50)
            .padding(.trailing, 50)
            .padding(.bottom, 40)
        }
    }
}


struct CardView: View {
    let music: MusicDetail
//    let isSelected: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(music.coverMusic)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                Text(music.judulMusic)
                    .font(.custom("Raleway", size: 30))
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                Text(music.singerMusic)
                    .font(.custom("Raleway", size: 14))
                    .fontWeight(.regular)
                    .lineLimit(1)
                    .foregroundColor(.white)
        }
//        .background(isSelected ? Color.blue : Color.gray)
        .cornerRadius(10)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView4()
    }
}
