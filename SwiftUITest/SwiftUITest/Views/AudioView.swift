//
//  AudioView.swift
//  SwiftUITest
//
//  Created by mtishchenko on 07.08.2019.
//  Copyright © 2019 mtishchenko. All rights reserved.
//

import SwiftUI

struct AudioView : View {
    private var item: AudioFile
    
    init(item: AudioFile) {
        self.item = item
    }
    
    var body: some View {
        Text("Hello World")
    }
}
