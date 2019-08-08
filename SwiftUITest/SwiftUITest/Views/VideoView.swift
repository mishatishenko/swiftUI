//
//  VideoView.swift
//  SwiftUITest
//
//  Created by mtishchenko on 07.08.2019.
//  Copyright © 2019 mtishchenko. All rights reserved.
//

import SwiftUI

struct VideoView : View {
    private var item: VideoFile
    
    init(item: VideoFile) {
        self.item = item
    }
    
    var body: some View {
        Text("Hello World")
    }
}
