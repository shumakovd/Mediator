//
//  News.swift
//  Mediator
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

struct News: Equatable {

    let id: Int
    let title: String
    var likesCount: Int

    /// Other properties

    static func == (left: News, right: News) -> Bool {
        return left.id == right.id
    }
}
