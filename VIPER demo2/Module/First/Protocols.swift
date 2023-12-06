//
//  Protocols.swift
//  VIPER demo2
//
//  Created by   admin on 19.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

//view
protocol ViewProtocol: AnyObject {
    // Presenter calls View listens
    func showMessage(withText: String)
}

//presenter

protocol PresenterProtocol: AnyObject {
    // View calls Presenter listens
    
    var view: ViewProtocol? { get set }
    var interactor: PresenterToInteractor? { get set }
    var router: PresenterToRouter? { get set }
    
    func viewDidLoad()
    func openSecond()
}

//presenter
protocol InteractorToPresenter: AnyObject {
    //Interactor calls Presenter listens
    func fetchSuccess(message: String)
    func fetchFails(error: String)
}

//interactor
protocol PresenterToInteractor: AnyObject {
    // Presenter calls Interactor listens
    var presenter: InteractorToPresenter? { get set }
    func fetchData()
}

