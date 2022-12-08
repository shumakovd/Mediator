//
//  BaseComponent.swift
//  Mediator
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

/// The Base Component provides the basic functionality of storing a mediator's
/// instance inside component objects.
class BaseComponent {

    weak var mediator: Mediator?

    init(mediator: Mediator? = nil) {
        self.mediator = mediator
    }

    func update(mediator: Mediator) {
        self.mediator = mediator
    }
}
