//
//  AudioFile.swift
//  SwiftUITest
//
//  Created by mtishchenko on 07.08.2019.
//  Copyright © 2019 mtishchenko. All rights reserved.
//

import UIKit

class AudioFile: FileItem {
    override var icon: UIImage {
        return #imageLiteral(resourceName: "audio")
    }
    override init(url: URL) {
        super.init(url: url)
    }
}
