//
//  Presenter.swift
//  VIPER demo2
//
//  Created by   admin on 19.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation



class Presenter: ViewToPresenter {
   
    weak var view: PresenterToView?
    
    var interactor: PresenterToInteractor?
    
    var router: PresenterToRouter?
    
 //view delegates
    func viewDidLoad() {
        print(#function)
        interactor?.giveMeData()
        
    }
    func openSecond() {
        router?.showVC(view: view)
       }
     
}

extension Presenter: InteractorToPresenter {
    //Interactor delegates
    func fetchSuccess() {
        print("Interactor \(#function)")
        view?.showSmth()
    }
    
    func fetchFails() {
        print("Interactor \(#function)")
    }
}
