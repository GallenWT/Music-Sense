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
//
//import SwiftUI
//
//struct ContentView1: View {
//    @State private var textA: String = "Teks A"
//    @State private var textB: String = "Teks B"
//    @State private var textC: String = "Teks C"
//    @State private var isTextAPressed: Bool = true
//    @State private var isTextBPressed: Bool = false
//
//    var body: some View {
//        VStack(spacing: 20) {
//            Text(textA)
//                .font(.largeTitle)
//                .padding()
//                .background(isTextAPressed ? Color.green : Color.clear)
//                .cornerRadius(10)
//                .onTapGesture {
//                    isTextAPressed.toggle()
//                    if isTextAPressed {
//                        isTextBPressed = false
//                        textC = "State 1"
//                    } else {
//                        textC = "Teks C"
//                    }
//                }
//            
//            Text(textB)
//                .font(.largeTitle)
//                .padding()
//                .background(isTextBPressed ? Color.red : Color.clear)
//                .cornerRadius(10)
//                .onTapGesture {
//                    isTextBPressed.toggle()
//                    if isTextBPressed {
//                        isTextAPressed = false
//                        textC = "State 2"
//                    } else {
//                        textC = "Teks C"
//                    }
//                }
//            
//            Text(textC)
//                .font(.largeTitle)
//                .padding()
//                .background(Color.yellow)
//                .cornerRadius(10)
//        }
//        .padding()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView1()
//    }
//}
//--------------------------------------------------------------------------------------------
//
//import SwiftUI
//
//struct ChordLibraryView1: View {
//    @State private var selectedChord: String? = nil
//    @State private var selectedBassOption: String? = nil
//
//    var body: some View {
//        NavigationView {
//            List {
//                Section(header: Text("Chords")) {
//                    ForEach(0..<12, id: \.self) { index in
//                        NavigationLink(
//                            destination: ChordDetailView1(chord: ["C", "C#", "D", "D#", "E", "F", "F#", "G", "A", "A#", "B"][index]),
//                            label: Text(["C", "C#", "D", "D#", "E", "F", "F#", "G", "A", "A#", "B"][index])
//                        )
//                    }
//                }
//
//                Section(header: Text("Bass Options")) {
//                    ForEach(0..<7, id: \.self) { index in
//                        NavigationLink(
//                            destination: BassOptionDetailView(bassOption: ["major", "minor", "5", "7", "maj7", "m7", "sus4", "addg"][index]),
//                            label: Text(["major", "minor", "5", "7", "maj7", "m7", "sus4", "addg"][index])
//                        )
//                    }
//                }
//            }
//            .navigationTitle("Chord Library")
//            .navigationBarTitleDisplayMode(.inline)
//        }
//    }
//}
//
//struct ChordDetailView1: View {
//    let chord: String
//
//    var body: some View {
//        VStack {
//            Text(chord)
//                .font(.largeTitle)
//                .fontWeight(.bold)
//
//            // Add chord diagram or fretboard representation here
//        }
//        .navigationTitle(chord)
//    }
//}
//
//struct BassOptionDetailView: View {
//    let bassOption: String
//
//    var body: some View {
//        VStack {
//            Text(bassOption)
//                .font(.largeTitle)
//                .fontWeight(.bold)
//
//            // Add bass option details here
//        }
//        .navigationTitle(bassOption)
//    }
//}
//
//struct ContentView1: View {
//    var body: some View {
//        ChordLibraryView1()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView1()
//    }
//}


import SwiftUI

struct ContentView1: View {
    @State private var selectedChord: Chord = chordsMajor.first!
    @State private var scrollOffset: CGFloat = 0

    var body: some View {
        VStack {
            // Daftar Chord Horizontal yang Bisa Digeser
            GeometryReader { geo in
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 40) {
                        ForEach(chordsMajor) { chord in
                            VStack {
                                Text(chord.namaChord)
                                    .font(.title)
                                    .padding()
                                    .background(selectedChord == chord ? Color.blue : Color.gray)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                    .onTapGesture {
                                        selectedChord = chord
                                    }
                            }
                            .frame(width: geo.size.width / 3)
                        }
                    }
                    .padding(.horizontal, (geo.size.width - (geo.size.width / 3)) / 2)
                    .background(GeometryReader { geo in
                        Color.clear.preference(key: ScrollOffsetKey.self, value: geo.frame(in: .named("scroll")).minX)
                    })
                }
                .coordinateSpace(name: "scroll")
                .onPreferenceChange(ScrollOffsetKey.self) { value in
                    updateSelectedChord(with: value, in: geo.size.width / 3)
                }
            }
            .frame(height: 100)

            // Gambar Chord
            Image(selectedChord.gambarChord)
                .resizable()
                .scaledToFit()
                .frame(height: 300)
                .padding()
        }
        .padding()
    }

    private func updateSelectedChord(with offset: CGFloat, in itemWidth: CGFloat) {
        let index = Int((-offset + itemWidth / 2) / itemWidth)
        if index >= 0 && index < chordsMajor.count {
            selectedChord = chordsMajor[index]
        }
    }
}

struct ScrollOffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}

