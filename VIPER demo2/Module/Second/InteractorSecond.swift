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
        
    }
    
    deinit {
        print("de-init InteractorSecond")
    }
}
