//
//  ProfileVC.swift
//  Mediator
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import UIKit
import Foundation

class ProfileVC: ScreenUpdatable {

    private var numberOfGivenLikes: Int
    private weak var mediator: ScreenUpdatable?

    init(_ mediator: ScreenUpdatable?, _ numberOfGivenLikes: Int) {
        self.numberOfGivenLikes = numberOfGivenLikes
        self.mediator = mediator
    }

    func likeAdded(to news: News) {
        print("Profile: Received a liked news model with id \(news.id)")
        numberOfGivenLikes += 1
    }

    func likeRemoved(from news: News) {
        print("Profile: Received a disliked news model with id \(news.id)")
        numberOfGivenLikes -= 1
    }
}
