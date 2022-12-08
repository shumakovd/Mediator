//
//  Component1.swift
//  Mediator
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

/// Concrete Components implement various functionality. They don't depend on
/// other components. They also don't depend on any concrete mediator classes.
class Component1: BaseComponent {

    func doA() {
        print("Component 1 does A.")
        mediator?.notify(sender: self, event: "A")
    }

    func doB() {
        print("Component 1 does B.\n")
        mediator?.notify(sender: self, event: "B")
    }
}
