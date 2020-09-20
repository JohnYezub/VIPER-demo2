//
//  Interactor.swift
//  VIPER demo2
//
//  Created by   admin on 19.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

class Interactor: PresenterToInteractor {
    
    weak var presenter: InteractorToPresenter?
    
    func giveMeData() {
        print("Interactor was asked to \(#function)")
        presenter?.fetchSuccess()
       // presenter?.fetchFails()
    }
                
}
