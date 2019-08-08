//
//  ItemsView.swift
//  SwiftUITest
//
//  Created by mtishchenko on 25.07.2019.
//  Copyright © 2019 mtishchenko. All rights reserved.
//

import SwiftUI

struct ItemsView: View {
    enum Mode: Int, CaseIterable {
        case grid = 0
        case list
        case pages
        
        var name: String {
            switch self {
            case .grid:
                return "Grid"
            case .list:
                return "List"
            case .pages:
                return "Pages"
            }
        }
    }
    private var items: [FileItem]
    @State private var selectedMode: Int = 0
    
    init(items: [FileItem]) {
        self.items = items
    }

    var body: some View {
        VStack {
            self.contentView.navigationBarItems(trailing: Picker(selection: $selectedMode, label: Text("Presentation Style")) {
                ForEach(0..<Mode.allCases.count) {
                    Text(Mode.allCases[$0].name).tag($0)
                }
            }.pickerStyle(SegmentedPickerStyle()))
        }
    }
    
    private var contentView: AnyView {
        switch self.selectedMode {
        case Mode.grid.rawValue:
            return AnyView(GridView(items: self.items))
        case Mode.list.rawValue:
            return AnyView(TableView(items: self.items))
        case Mode.pages.rawValue:
            return AnyView(PageView(items: self.items))
        default:
            return AnyView(Text("Invalid value"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemsView(items: FileItemFactory.predefined)
        }
    }
}
#endif
