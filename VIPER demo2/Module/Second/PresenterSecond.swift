//
//  PresenterSecond.swift
//  VIPER demo2
//
//  Created by   admin on 20.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

class PresenterSecond: ViewToPresenterSecond {
    weak var view: PresenterToViewSecond?
    
    var interactor: PresenterToInteractorSecond?
    
    var router: PresenterToRouterSecond?
    
    func viewDidLoad() {
        view?.showSmth()
        interactor?.giveMeData()
    }
    
    deinit {
        print("de-init PresenterSecond")
    }
    
}

extension PresenterSecond: InteractorToPresenterSecond {
    func fetchSuccess(dayLenght: Int, sunrise: String, sunset: String) {
        
        let sunriseText = DateConverter.convertISOtoString(string: sunrise)
        let sunsetText = DateConverter.convertISOtoString(string: sunset)
        let dayLenghtText = DateConverter.convertSecondsToString(value: dayLenght)
        
        view?.updateDayLenght(string: dayLenghtText)
        view?.updateSunrise(string: sunriseText)
        view?.updateSunset(string: sunsetText)
    }
    
    func fetchFails() {
       //do nothing
    }
    
    
}
