//
//  ImagePreview.swift
//  SwiftUITest
//
//  Created by mtishchenko on 07.08.2019.
//  Copyright © 2019 mtishchenko. All rights reserved.
//

import SwiftUI

struct ImagePreview : View {
    private var item: ImageFile
    
    init(item: ImageFile) {
        self.item = item
    }
    
    var body: some View {
        Text("Hello World")
    }
}
