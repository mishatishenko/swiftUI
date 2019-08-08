//
//  ImageFile.swift
//  SwiftUITest
//
//  Created by mtishchenko on 07.08.2019.
//  Copyright © 2019 mtishchenko. All rights reserved.
//

import UIKit

class ImageFile: FileItem {
    override var icon: UIImage {
        return #imageLiteral(resourceName: "image")
    }
    override init(url: URL) {
        super.init(url: url)
    }
}
