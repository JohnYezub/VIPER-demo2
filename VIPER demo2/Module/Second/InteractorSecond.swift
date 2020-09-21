//
//  InteractorSecond.swift
//  VIPER demo2
//
//  Created by   admin on 20.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation
class InteractorSecond: PresenterToInteractorSecond {
   
    weak var presenter: InteractorToPresenterSecond?
    
    func giveMeData() {
        guard let data = DataStorage.shared.data else { presenter?.fetchFails(); return }
        let dayLength = data.results.dayLength
        let sunrise = data.results.sunrise
        let sunset = data.results.sunset
        presenter?.fetchSuccess(dayLenght: dayLength, sunrise: sunrise, sunset: sunset)

    }
    
    deinit {
        print("de-init InteractorSecond")
    }
}
