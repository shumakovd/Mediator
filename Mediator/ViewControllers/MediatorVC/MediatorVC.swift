//
//  MediatorVC.swift
//  Mediator
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import UIKit
import Foundation

class MediatorVC: UIViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testMediatorConcept()
        testMediatorForExample()
    }
    
    // MARK: - Methods
    
    func testMediatorConcept() {
        
        let component1 = Component1()
        let component2 = Component2()
        
        let mediator = ConcreteMediator(component1, component2)
        print("Client triggers operation A.")
        component1.doA()
        
        print("\nClient triggers operation D.")
        component2.doD()
        
        print(mediator)
        
    }
    
    
    func testMediatorForExample() {
        
        let newsArray = [News(id: 1, title: "News1", likesCount: 1),
                         News(id: 2, title: "News2", likesCount: 2)]
        
        let numberOfGivenLikes = newsArray.reduce(0, { $0 + $1.likesCount })
        
        let mediator = ScreenMediator()
        
        let feedVC = NewsFeedVC(mediator, newsArray)
        let newsDetailVC = NewsDetailVC(mediator, newsArray.first!)
        let profileVC = ProfileVC(mediator, numberOfGivenLikes)
        
        mediator.update([feedVC, newsDetailVC, profileVC])
        
        feedVC.userLikedAllNews()
        feedVC.userDislikedAllNews()
    }
    
}
