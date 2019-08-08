//
//  FileItemFactory.swift
//  SwiftUITest
//
//  Created by mtishchenko on 07.08.2019.
//  Copyright © 2019 mtishchenko. All rights reserved.
//

import Foundation

class FileItemFactory {
    static func makeItem(with url: URL) -> FileItem? {
        switch url.pathExtension {
        case "png", "jpg", "jpeg", "tiff", "tif", "bmp", "ico":
            return ImageFile(url: url)
        case "pdf", "doc", "docx", "xsl", "xsls", "ppt", "pptx", "txt", "rtf":
            return DocumentFile(url: url)
        case "mov", "avi", "mp4":
            return VideoFile(url: url)
        case "mp3", "wav":
            return AudioFile(url: url)
        default:
            return nil
        }
    }
    
    static var predefined: [FileItem] {
        var items: [FileItem] = []
        if let jpegUrl = Bundle.main.url(forResource: "test", withExtension: "jpeg"), let jpegItem = self.makeItem(with: jpegUrl) {
            items.append(jpegItem)
        }
        if let pngUrl = Bundle.main.url(forResource: "test", withExtension: "png"), let pngItem = self.makeItem(with: pngUrl) {
            items.append(pngItem)
        }
        return items
    }
}
