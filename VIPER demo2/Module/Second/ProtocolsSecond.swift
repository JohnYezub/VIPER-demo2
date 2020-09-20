//
//  ProtocolsSecond.swift
//  VIPER demo2
//
//  Created by   admin on 20.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

//view
protocol PresenterToViewSecond: class {
    // Presenter calls -> View listens
    func showSmth()
}

//presenter
protocol ViewToPresenterSecond: class {
    // View calls -> Presenter listens

    var view: PresenterToViewSecond? { get set }
    var interactor: PresenterToInteractorSecond? { get set }
    var router: PresenterToRouterSecond? { get set }
    
    func viewDidLoad()
    
}

//interactor
protocol PresenterToInteractorSecond: class {
    // Presenter calls -> Interactor listens
    var presenter: InteractorToPresenterSecond? { get set }
    func giveMeData()
}

//router
protocol PresenterToRouterSecond: class {
    //Presenter calls - > Router listens
}

//presenter
protocol InteractorToPresenterSecond: class {
    //Interactor calls - > Presenter listens
    func fetchSuccess()
    func fetchFails()
}
