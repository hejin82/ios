//
//  PostCell.swift
//  MyHood
//
//  Created by 何進 on 2018/1/1.
//  Copyright © 2018年 何進. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        postImage.layer.cornerRadius = 15
    }
    
    func configureCell(_ post: Post) {
        titleLbl.text = post.title
        descLbl.text = post.postDesc
        postImage.image = DataService.instance.imageForPath(post.imagePath)
    }

}
