//
//  PageView.swift
//  SwiftUITest
//
//  Created by mtishchenko on 08.08.2019.
//  Copyright © 2019 mtishchenko. All rights reserved.
//

import SwiftUI

struct PageView: View {
    private var items: [FileItem]
    
    init(items: [FileItem]) {
        self.items = items
    }

    var body: some View {
        Text("page")
    }
}
