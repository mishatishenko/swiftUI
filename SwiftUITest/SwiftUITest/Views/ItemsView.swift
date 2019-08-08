//
//  ItemsView.swift
//  SwiftUITest
//
//  Created by mtishchenko on 25.07.2019.
//  Copyright © 2019 mtishchenko. All rights reserved.
//

import SwiftUI

struct ItemsView: View {
    enum Mode {
        case grid
        case list
        case pages
    }
    private var items: [FileItem]
    
    init(items: [FileItem]) {
        self.items = items
    }

    var body: some View {
        VStack {
            ForEach(self.items) { item in
                HStack {
                    Image(uiImage: item.icon)
                    Text(item.name).foregroundColor(.yellow)
                }
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ItemsView(items: FileItemFactory.predefined)
    }
}
#endif
