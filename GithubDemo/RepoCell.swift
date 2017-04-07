//
//  RepoCell.swift
//  GithubDemo
//
//  Created by yanze on 4/5/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class RepoCell: UITableViewCell {

    @IBOutlet weak var repoName: UILabel!
    @IBOutlet weak var startCount: UILabel!
    @IBOutlet weak var forkCount: UILabel!
    @IBOutlet weak var repoOwnerName: UILabel!
    @IBOutlet weak var repoOwnerImgView: UIImageView!
    @IBOutlet weak var repoDescription: UILabel!
    
    
    var repo: GithubRepo? {
        didSet {
            repoOwnerImgView.layer.cornerRadius = 10
            repoOwnerImgView.layer.masksToBounds = true
            
            if let name = repo?.name {
                repoName.text = name
            }
            
            if let stars = repo?.stars {
                startCount.text = String(stars)
            }
            
            if let forks = repo?.forks {
                forkCount.text = String(forks)
            }
            
            if let ownerName = repo?.ownerHandle {
                repoOwnerName.text = ownerName
            }
            
            if let imgLink = repo?.ownerAvatarURL {
                repoOwnerImgView.setImageWith(URL(string:imgLink)!)
            }
            
            if let description = repo?.repoDescription {
                repoDescription.text = description
            }
            
        }
    }
    
    
}
