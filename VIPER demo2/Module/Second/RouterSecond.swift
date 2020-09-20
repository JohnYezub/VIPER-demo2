//
//  SecondRouter.swift
//  VIPER demo2
//
//  Created by   admin on 20.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation
import UIKit

class RouterSecond: PresenterToRouterSecond {
    
    static func createModule() -> UIViewController {
        
        let viewController = SecondViewController()
        
        let presenter = PresenterSecond()
        let interactor = InteractorSecond()
        let router = RouterSecond()
        
        ///strong
        viewController.presenter = presenter
        ///weak
        presenter.view = viewController
        ///strong
        presenter.router = router
        ///strong
        presenter.interactor = interactor
        ///weak
        interactor.presenter = presenter
        
        
        return viewController
    }
    deinit {
        print("de-init RouterSecond")
    }
}
