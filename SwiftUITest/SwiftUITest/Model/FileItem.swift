//
//  FileItem.swift
//  SwiftUITest
//
//  Created by mtishchenko on 07.08.2019.
//  Copyright © 2019 mtishchenko. All rights reserved.
//

import UIKit

class FileItem: Identifiable {
    private(set) var url: URL
    
    var name: String {
        return self.url.lastPathComponent
    }
    var icon: UIImage {
        return #imageLiteral(resourceName: "document")
    }
    
    init(url: URL) {
        self.url = url
    }
}
