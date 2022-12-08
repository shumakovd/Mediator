//
//  Mediator.swift
//  Mediator
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

/// The Mediator interface declares a method used by components to notify the
/// mediator about various events. The Mediator may react to these events and
/// pass the execution to other components.
protocol Mediator: AnyObject {

    func notify(sender: BaseComponent, event: String)
}
