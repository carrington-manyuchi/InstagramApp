//
//  FeedData.swift
//  InstangramAPP
//
//  Created by Carrington Tafadzwa Manyuchi on 2022/12/22.
//

import Foundation
import UIKit

struct Post {
    
    var postImage: UIImage
    
    var postComment: String
    
    var user: User
    
    var commentCount: Int
    
    var likesCount: Int
    
    var datePosted: String
    
}

struct Story {
    
    var post: Post
    
}

class Model {
    
    var postList: [Post] = [Post]()
    
    //var users: [User] = [User]()
    
    var storyList: [Story] = [Story]()
    
    init() {
        
        let user1 = User(name: "Carrington Manyuchi", profileImage: UIImage(named: "user1")!)
        
        //users.append(user1)
        
        let user2 = User(name: "Josephine Chivinge", profileImage: UIImage(named: "user2")!)
        
        //users.append(user2)
        
        let post1 = Post(postImage: UIImage(named: "destination1")!, postComment: "This is a brilliant destination that I recently went to.", user: user1, commentCount: 5, likesCount: 10, datePosted: "24 Dec 2022 ")
        
        postList.append(post1)
        
        let post2 = Post(postImage: UIImage(named: "destination2")!, postComment: "I am on the wide open road travelling to my new destination.", user: user2, commentCount: 14, likesCount: 12, datePosted: "24 Dec 2022")
        
        postList.append(post2)
        
        postList.append(Post(postImage: UIImage(named: "destination5")!, postComment: "The long winding dusty road with the sun setting in the horizon.", user: user1, commentCount: 5, likesCount: 10, datePosted: "24 Dec 2022"))
        
        postList.append(Post(postImage: UIImage(named: "destination4")!, postComment: "The long winding dusty road with the sun setting in the horizon.", user: user2, commentCount: 1, likesCount: 18, datePosted: "24 Dec 2022"))
        
        postList.append(Post(postImage: UIImage(named: "destination5")!, postComment: "The long winding dusty road with the sun setting in the horizon.", user: user1, commentCount: 5, likesCount: 10, datePosted: "24 Dec 2022"))
        
        postList.append(Post(postImage: UIImage(named: "destination5")!, postComment: "The long winding dusty road with the sun setting in the horizon.", user: user1, commentCount: 5, likesCount: 10, datePosted: "24 Dec 2022"))
        
        
        postList.append(Post(postImage: UIImage(named: "destination3")!, postComment: "Can anyone beat this? This has to be the best sunset ever. I will be coming here again very soon!", user: user1, commentCount: 80, likesCount: 122, datePosted: "24 Dec 2022"))
        
        postList.append(Post(postImage: UIImage(named: "destination5")!, postComment: "The long winding dusty road with the sun setting in the horizon.", user: user1, commentCount: 5, likesCount: 10, datePosted: "24 Dec 2022"))
        
        postList.append(Post(postImage: UIImage(named: "destination5")!, postComment: "The long winding dusty road with the sun setting in the horizon.", user: user1, commentCount: 5, likesCount: 10, datePosted: "25 Dec 2022"))
        
        postList.append(Post(postImage: UIImage(named: "destination5")!, postComment: "The long winding dusty road with the sun setting in the horizon.", user: user1, commentCount: 5, likesCount: 10, datePosted: "225 Dec 2022"))
        
        postList.append(Post(postImage: UIImage(named: "destination5")!, postComment: "The long winding dusty road with the sun setting in the horizon.", user: user1, commentCount: 5, likesCount: 10, datePosted: "25 Dec 2022"))
        
        postList.append(Post(postImage: UIImage(named: "destination5")!, postComment: "The long winding dusty road with the sun setting in the horizon.", user: user1, commentCount: 5, likesCount: 10, datePosted: "25 Dec 2022"))
        
        storyList.append(Story(post: post1))
        
        storyList.append(Story(post: post2))
        
    }
    
    
}
