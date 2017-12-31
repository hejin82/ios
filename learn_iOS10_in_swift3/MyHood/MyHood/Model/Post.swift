//
//  Post.swift
//  MyHood
//
//  Created by 何進 on 2018/1/1.
//  Copyright © 2018年 何進. All rights reserved.
//

import Foundation

class Post {
    fileprivate var imagePath: String
    fileprivate var title: String
    fileprivate var postDesc: String
    
    init(imagePath: String, title: String, description: String) {
        self.imagePath = imagePath
        self.title = title
        self.postDesc = description
    }
}
