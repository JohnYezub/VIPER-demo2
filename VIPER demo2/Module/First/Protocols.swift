//
//  Protocols.swift
//  VIPER demo2
//
//  Created by   admin on 19.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

//view
protocol PresenterToView: class {
    // Presenter calls View listens
    func showMessage(withText: String)
}

//presenter
protocol ViewToPresenter: class {
    // View calls Presenter listens
    
    var view: PresenterToView? { get set }
    var interactor: PresenterToInteractor? { get set }
    var router: PresenterToRouter? { get set }
    
    func viewDidLoad()
    func openSecond()
}

//presenter
protocol InteractorToPresenter: class {
    //Interactor calls Presenter listens
    func fetchSuccess(message: String)
    func fetchFails(error: String)
}

//interactor
protocol PresenterToInteractor: class {
    // Presenter calls Interactor listens
    var presenter: InteractorToPresenter? { get set }
    func giveMeData()
}

//router
protocol PresenterToRouter: class {
    //Presenter calls Router listens
    func showVC(view: PresenterToView?)
}


