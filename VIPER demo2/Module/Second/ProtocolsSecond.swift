//
//  ProtocolsSecond.swift
//  VIPER demo2
//
//  Created by   admin on 20.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

//view
protocol PresenterToViewSecond: AnyObject {
    // Presenter calls -> View listens
    func showSmth()
    func updateDayLenght(string: String)
    func updateSunrise(string: String)
    func updateSunset(string: String)
}

//presenter
protocol ViewToPresenterSecond: AnyObject {
    // View calls -> Presenter listens

    var view: PresenterToViewSecond? { get set }
    var interactor: PresenterToInteractorSecond? { get set }
    var router: PresenterToRouterSecond? { get set }
    
    func viewDidLoad()
    
}

//interactor
protocol PresenterToInteractorSecond: AnyObject {
    // Presenter calls -> Interactor listens
    var presenter: InteractorToPresenterSecond? { get set }
    func giveMeData()
}

//router
protocol PresenterToRouterSecond: AnyObject {
    //Presenter calls - > Router listens
}

//presenter
protocol InteractorToPresenterSecond: AnyObject {
    //Interactor calls - > Presenter listens
    func fetchSuccess(dayLenght: Int, sunrise: String, sunset: String)
    func fetchFails()
}
