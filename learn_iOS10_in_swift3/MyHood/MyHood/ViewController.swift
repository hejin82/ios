//
//  ViewController.swift
//  MyHood
//
//  Created by 何進 on 2018/1/1.
//  Copyright © 2018年 何進. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        //let post = Post(imagePath: "", title: "Post 1", description: "Post 1 Description")
        //let post2 = Post(imagePath: "", title: "Post 2", description: "Post 2 Description")
        //let post3 = Post(imagePath: "", title: "Post 3", description: "Post 3 Description")
        //posts.append(post)
        //posts.append(post2)
        //posts.append(post3)
        //tableView.reloadData()
        DataService.instance.loadPosts()
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.onPostsLoaded(_:)), name: NSNotification.Name(rawValue: "postsLoaded"), object: nil)
    }
    
    @objc func onPostsLoaded(_ notif: AnyObject) {
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let post = posts[indexPath.row]
        let post = DataService.instance.loadedPosts[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        }
        return PostCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return posts.count
        return DataService.instance.loadedPosts.count
    }

}

