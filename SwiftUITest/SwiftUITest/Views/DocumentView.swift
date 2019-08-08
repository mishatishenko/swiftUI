//
//  DocumentView.swift
//  SwiftUITest
//
//  Created by mtishchenko on 07.08.2019.
//  Copyright © 2019 mtishchenko. All rights reserved.
//

import SwiftUI

struct DocumentView : View {
    private var item: DocumentFile
    
    init(item: DocumentFile) {
        self.item = item
    }
    
    var body: some View {
        Text("Hello World")
    }
}
