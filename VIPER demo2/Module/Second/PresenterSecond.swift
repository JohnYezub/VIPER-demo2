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
    }
    
    deinit {
        print("de-init PresenterSecond")
    }
    
}

extension PresenterSecond: InteractorToPresenterSecond {
    func fetchSuccess() {
        
    }
    
    func fetchFails() {
        
    }
    
    
}
