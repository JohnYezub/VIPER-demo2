//
//  Router.swift
//  VIPER demo2
//
//  Created by   admin on 19.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation
import UIKit

class Router: PresenterToRouter {    
    
    
    static func createModule() -> UINavigationController {
                                 
           let viewController = FirstViewController()
           //var presenter: ViewToPresenter & InteractorToPresenter = Presenter()
            let presenter = Presenter()
           //var interactor: PresenterToInteractor = Interactor()
            let interactor = Interactor()
           //var router:PresenterToRouter = Router()
            let router = Router()
           
           viewController.presenter = presenter
           presenter.view = viewController
           presenter.router = router
           presenter.interactor = interactor
        
           interactor.presenter = presenter
           
            let navigationController = UINavigationController(rootViewController: viewController)
           return navigationController
           
       }
    
    func showVC(view: PresenterToView?) {
        // MARK: - Navigation
        
               print("Router was asked to push SecondView in navigation")
               let secondViewController = RouterSecond.createModule
                   
               let viewController = view as! FirstViewController
               viewController.navigationController?
                .pushViewController(secondViewController(), animated: true)
    }
    
}
