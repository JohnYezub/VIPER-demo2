//
//  Interactor.swift
//  VIPER demo2
//
//  Created by   admin on 19.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

///Presenter calls Interactor listens
class Interactor: PresenterToInteractor {
    
    ///Intercator calls Presenter listens
    weak var presenter: InteractorToPresenter?
    
    func giveMeData() {
        print("Interactor was asked to \(#function)")
        
        NetworkService.getData { result in
            
            switch result {
            case .success(let data):
                if data != nil {
                    print(data!)
                    let decoded = NetworkService.decodeData(type: SunModel.self, data: data!)
                    DataStorage.shared.data = decoded
                    self.presenter?.fetchSuccess(message: "I've got some data")
                } else {
                    self.presenter?.fetchFails(error: "Sorry, no data")
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
            
        
        }
    }
    
}
