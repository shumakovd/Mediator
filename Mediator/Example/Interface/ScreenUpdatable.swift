//
//  ScreenUpdatable.swift
//  Mediator
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

protocol ScreenUpdatable: class {

    func likeAdded(to news: News)

    func likeRemoved(from news: News)
}
